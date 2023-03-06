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
        NavigationStack {
            ZStack {
                ScrollView(showsIndicators: false) {
                    ForEach(viewmodel.tasks) { task in
                        TaskRowView(showSheet: $showSheet, hour: task.hour, content: task.content)
                    }
                }
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            NavigationLink("hello", destination: AddView(hour: "8시"))
                        } label: {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        .padding(.trailing, 40)
                        .padding(.bottom, 20)
                    }
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

// MARK: COMPONENT
