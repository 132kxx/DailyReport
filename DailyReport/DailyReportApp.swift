//
//  DailyReportApp.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/24.
//

import SwiftUI

@main
struct DailyReportApp: App {
    
    @ObservedObject var viewmodel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewmodel)
        }
        
    }
}
