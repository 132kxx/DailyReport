//
//  HomeView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/24.
//

import SwiftUI

struct HomeView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHidth = UIScreen.main.bounds.height
    
    @ObservedObject var viewModel = ViewModel()
    @State private var placeholder: String = ""

    var body: some View {
        VStack {
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


