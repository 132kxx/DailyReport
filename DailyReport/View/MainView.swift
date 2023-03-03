//
//  HomeView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            DatePickerView()
                        
            TableView()
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


