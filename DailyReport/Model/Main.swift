//
//  main.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct task: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let date: String
    let hour: String
    var content: String
}

