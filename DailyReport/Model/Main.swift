//
//  main.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct Task: Identifiable, Hashable, Codable {
    let id: String
    let hour: String
    let content: String
}

