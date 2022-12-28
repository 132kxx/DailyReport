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
                            
                            .onTapGesture {
                                showPop = true
                                print("ok")
                            }
                           
                    }
                    
                }
            }

            if showPop {
                VStack {
                    Spacer()
                    Rectangle()
                        .edgesIgnoringSafeArea(.bottom)
                        .frame(height: 300)
                        .background {
                            VStack {
                                Text("hello")
                                Text("hello")
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
            .preferredColorScheme(.dark)
    }
}
