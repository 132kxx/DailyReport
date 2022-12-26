//
//  TableView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct TableView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ForEach(viewModel.modelData) { model in
                HStack {
                    Text("\(model.hour)")
                        .frame(width: 50, height: 50)
                    

                    Rectangle()
                        .foregroundColor(.clear)
                        .background {
                            Text("\(model.content)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .onTapGesture {
                            print("ok")
                        }
                }
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
