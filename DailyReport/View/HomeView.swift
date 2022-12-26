//
//  HomeView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/24.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = ViewModel()
    @State private var placeholder: String = ""

    var body: some View {
        VStack {
            MonthPickerView()
            
            DatePickerView()
                        
            TableView()
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


