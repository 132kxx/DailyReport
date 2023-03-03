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
    
    // for sheet
    @State var showSheet: Bool = false
    
    //for textfield
    @State var presentText: String = ""

    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                ForEach(viewmodel.tasks) { task in
                    TaskRowView(showSheet: $showSheet, hour: task.hour, content: task.content)
                    }
                    //sheet
                    .sheet(isPresented: $showSheet) {
                        VStack(spacing: 15) {
                            // current time
                            Text("8")
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
                                
                                // delete button
                                Button {
                                    presentText = ""
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
                                presentText = ""
                                showSheet.toggle()
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

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ViewModel())
    }
}
