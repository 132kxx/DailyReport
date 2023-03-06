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
    
    init(id: String = UUID().uuidString, hour: String, content: String) {
        self.id = id
        self.hour = hour
        self.content = content
    }
}

