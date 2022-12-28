////
////  pra.swift
////  DailyReport
////
////  Created by kxx: on 2022/12/28.
////
//
//import SwiftUI
//
//struct pra: View {
//    @State var showup: Bool = false
//    var body: some View {
//        Button {
//            showup = true
//        } label: {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        }
//            VStack {
//                //headline button
//                HStack {
//                    Button {
//                        showup = false
//                    } label: {
//                        Text("cancel")
//                    }
//
//                    
//                    Spacer()
//                    
//                    Button {
//                        //
//                    } label: {
//                        Text("submit")
//                    }
//                }
//                .padding(20)
//                
//                //textfield
//                Text("edit your content")
//                    .font(.headline)
//                    .padding()
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                
//
//                Spacer()
//            }
//        }
//    }
//}
//struct pra_Previews: PreviewProvider {
//    static var previews: some View {
//        pra()
//    }
//}
