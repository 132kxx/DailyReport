//
//  ContentView.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
            .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
