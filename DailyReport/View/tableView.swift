//
//  TableView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct TableView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHidth = UIScreen.main.bounds.height
    
    @ObservedObject var viewmodel = ViewModel()
    @State var sheetValue: Bool = false
    @State var presentText: String = ""
    @State var buttonValue: String = ""
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                ForEach(0..<viewmodel.models.count, id: \.self) { index in
                    HStack {
                        Text(viewmodel.modelData[index].hour)
                            .frame(width: screenWidth / 7, height: screenWidth / 8)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .background {
                                Button {
                                    buttonValue = viewmodel.modelData[index].hour
                                    sheetValue.toggle()
                                } label: {
                                    Text(viewmodel.modelData[index].content)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                            }
                            .contentShape(Rectangle())
                            .sheet(isPresented: $sheetValue) {
                                VStack(spacing: 15) {
                                    
                                    Text("\(buttonValue)")
                                        .fontWeight(.bold)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top)
                                        .onAppear {
                                            buttonValue += "시"
                                        }
                                    
                                    ZStack {
                                        TextField("변경할 내용을 입력해주세요", text: $presentText)
                                            .textFieldStyle(.roundedBorder)
                                        Button {
                                            //
                                        } label: {
                                            Image(systemName: "multiply.circle")
                                                .foregroundColor( presentText == "" ? .clear : .black )
                                        }
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 5)
                                    }
                                    
                                    //submit button
                                    Button {
                                        presentText = ""
                                    } label: {
                                        Text("Submit")
                                            .foregroundColor(.white)
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .background {
                                        Capsule()
                                            .foregroundColor(.blue)
                                        
                                    }
                                    

                                    
                                }
                                .padding(.horizontal)
                                .presentationDetents([.height(150)])
                                .presentationDragIndicator(.hidden)
                            }
                    }
                }
            }
            // time line
//            HStack(spacing: -3) {
//                Image(systemName: "triangle")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 17)
//                    .rotationEffect(Angle(degrees: 90))
//                    .foregroundColor(.red)
//                Rectangle()
//                    .frame(height: 1)
//                    .foregroundColor(.red)
//            }
//            .padding(.horizontal, -1)
//
            
          
            
            
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
