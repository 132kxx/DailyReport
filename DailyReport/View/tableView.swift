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
    
    @StateObject var viewmodel = ViewModel()
    @State var sheetValue: Bool = false
    @State var presentText: String = ""
    @State var hour: String = ""
    @State var buttonIndex: Int = 0
    @State var contentText: String = "내용을 입력해주세요"
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                ForEach(viewmodel.tasks) { task in
                    HStack {
                        //time line
                        Text(task.hour)
                            .frame(width: screenWidth / 7, height: screenWidth / 8)
                        
                        
                        //content line
                        Button {
//                            viewmodel.editData(index: Int(task.hour)! - 8, content: "hi")
                            sheetValue.toggle()
                        } label: {
                            Text(task.content)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }

                    }
                    //sheet
                    .sheet(isPresented: $sheetValue) {
                        VStack(spacing: 15) {
                            // current time
                            Text(hour)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top)
                                .onAppear {
//                                    hour = task.hour + "시"
//                                    presentText = ""
                                }

                            // textfield
                            ZStack {
                                
                                TextField("내용", text: $presentText)
                                    .textFieldStyle(.roundedBorder)
                                
                                Button {
//                                    presentText = ""
                                } label: {
                                    Text("delete")
                                        .foregroundColor(presentText == "" ? .clear : .white)
                                        .padding(5)
                                        .background {
                                            RoundedRectangle(cornerRadius: 8)
                                                .foregroundColor( presentText == "" ? .clear : .red )
                                        }

                                }
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 5)
                            }

                            //submit button
                            Button {
//                                viewmodel.editData(index: , content: presentText)
//                                presentText = ""
//                                sheetValue = false
                            } label: {
                                Text("Submit")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .center)
                            }
                            .background {
                                Capsule()
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.horizontal)
                        .presentationDetents([.height(150)])
                        .presentationDragIndicator(.visible)
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


//
