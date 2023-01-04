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
    
    
    @ObservedObject var viewModel = ViewModel()
    @State var showPop: Bool = false
    @State var writedText: String = ""
    
    var body: some View {
        
        ZStack {
            ScrollView(showsIndicators: false) {
                ForEach(viewModel.modelData) { model in
                    HStack {
                        Text("\(model.hour)")
                            .frame(width: screenWidth / 7, height: screenWidth / 8)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .background {
                                    Text("\(model.content)")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            .contentShape(Rectangle())
                            
                            
                           
                    }
                    
                }
            }
            // time line
            HStack(spacing: -3) {
                Image(systemName: "triangle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 17)
                    .rotationEffect(Angle(degrees: 90))
                    .foregroundColor(.red)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.red)
            }
            .padding(.horizontal, -1)
            
            
            //sheet view
//            if showPop {
//                VStack {
//                    Spacer()
//                    VStack {
//                        HStack {
//                            Button {
//                                showPop = false
//                            } label: {
//                                Text("cancel")
//                                    .foregroundColor(.red)
//                            }
//
//                            Spacer()
//                            Text("submit")
//                        }
//                        //적혀져있떤거
//                        Text("계획했던 일")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .offset(x:8, y: 10)
//                            .zIndex(0)
//                            .background(Color.gray)
//
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke()
//                                .frame(height: 50)
//
//
//                            TextField("뭐라도 입력을 하세요", text: $writedText)
//                                .padding(.leading)
//                        }
//
//                        //적을꺼
//                        Text("내가한 일")
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .offset(x:8, y: 10)
//                            .zIndex(0)
//                            .background(Color.gray)
//
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 10)
//                                .stroke()
//                                .frame(height: 50)
//
//                            TextField("뭐라도 입력을 하세요", text: $writedText)
//                                .padding(.leading)
//                        }
//
//
//                    }
//                    .frame(maxWidth: .infinity)
//                    .padding([.horizontal, .top], 10)
//                    .background(Color.gray)
//                }
//            }
            
            
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
