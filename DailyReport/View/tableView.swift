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
    @State var hour: String = ""
    @State var buttonIndex: Int = 0
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                ForEach(0 ..< viewmodel.models.count, id: \.self) { index in
                    HStack {
                        Text(viewmodel.models[index].hour)
                            .frame(width: screenWidth / 7, height: screenWidth / 8)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .background {
                                Button {
                                    hour = viewmodel.models[index].hour
                                    buttonIndex = index
                                    sheetValue.toggle()
                                } label: {
                                    Text(viewmodel.models[index].content)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                            }
                            .contentShape(Rectangle())
                            .sheet(isPresented: $sheetValue) {
                                VStack(spacing: 15) {
                                    // current time
                                    Text(hour)
                                        .fontWeight(.bold)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top)
                                        .onAppear {
                                            hour += "시"
                                        }
                                    
                                    // textfield
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
                                        viewmodel.editData(buttonIndex, viewmodel.models[buttonIndex].hour, presentText)
                                        presentText = ""
                                        sheetValue = false
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
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
