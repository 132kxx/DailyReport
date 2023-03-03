//
//  main.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct Task: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let hour: String
    let content: String
}

