//
//  main.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

struct model: Identifiable, Hashable {
    var id = UUID()
    var hour: String
    var content: String
}

