//
//
//import SwiftUI
//
//struct pra: View {
//    var datess: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
//    @State var presentedValue: Int = 5
//    
//
//    
//    var body: some View {
//        ScrollViewReader { proxy in
//            ScrollView(.horizontal) {
//                HStack(spacing: 50) {
//                    Button {
//                        if presentedValue != 0 {
//                            presentedValue -= 1
//                        }
//                    } label: {
//                        Text("\(datess[presentedValue-2])")
//                    }
//                    
//                    Button {
//                        //
//                    } label: {
//                        Text("\(datess[presentedValue-1])")
//                    }
//                    
//                    Button {
//                        //
//                    } label: {
//                        Text("\(datess[presentedValue])")
//                            .font(.title)
//                    }
//                    
//                    Button {
//                        //
//                    } label: {
//                        Text("\(datess[presentedValue+1])")
//                    }
//                    
//                    Button {
//                        if presentedValue+3 != date.count {
//                            presentedValue += 1
//                        }
//                    } label: {
//                        Text("\(datess[presentedValue+2])")
//                    }
//                    
//                }
//            }
//        }
//    }
//}
//
//struct pra_Previews: PreviewProvider {
//    static var previews: some View {
//        pra()
//    }
//}
