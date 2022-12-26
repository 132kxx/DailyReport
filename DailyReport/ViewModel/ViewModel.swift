//
//  File.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var models: [model] = []
    
    
    let modelData = [
        model(hour: "9", content: "기상하기"),
        model(hour: "10", content: "몰라"),
        model(hour: "11", content: "뭐라도"),
        model(hour: "12", content: "하겠찌"),
        model(hour: "1", content: "기상하기"),
        model(hour: "2", content: "몰라"),
        model(hour: "3", content: "뭐라도"),
        model(hour: "4", content: "하겠찌"),
        model(hour: "5", content: "기상하기"),
        model(hour: "6", content: "몰라"),
        model(hour: "7", content: "뭐라도"),
        model(hour: "8", content: "하겠찌"),
        model(hour: "9", content: "기상하기"),
        model(hour: "10", content: "몰라"),
        model(hour: "11", content: "뭐라도"),
        model(hour: "12", content: "하겠찌")
    ]
}
