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
                ForEach(viewmodel.models, id: \.self) { model in
                    HStack {
                        Text(model.hour)
                            .frame(width: screenWidth / 7, height: screenWidth / 8)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .background {
                                Button {
//                                    buttonValue = viewmodel.models.firstIndex(of: model)
                                    sheetValue.toggle()
                                } label: {
                                    Text(model.content)
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
//                                            buttonValue += "시"
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
                                        viewmodel.editData(Int(model.hour), buttonValue, presentText)
                                        print(model.content)
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
