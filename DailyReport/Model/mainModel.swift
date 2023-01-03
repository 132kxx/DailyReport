//
//  main.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct model: Identifiable {
    var id = UUID()
    var hour: String
    var content: String
}

struct month {
    var dates: [ndate]
}

struct ndate {
    var time: [String] = ["9", "10"]
    var content: String
    
}

