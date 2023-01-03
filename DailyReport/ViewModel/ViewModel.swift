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
        model(hour: "10", content: "아침정리"),
        model(hour: "11", content: "운동"),
        model(hour: "12", content: "개발공부"),
        model(hour: "1", content: "점심밥"),
        model(hour: "2", content: "오후공부시작"),
        model(hour: "3", content: "피아노배우기"),
        model(hour: "4", content: "출근준비"),
        model(hour: "5", content: "출근하기"),
        model(hour: "6", content: "가게정리"),
        model(hour: "7", content: "회원정보확인"),
        model(hour: "8", content: "예약확인"),
        model(hour: "9", content: "기상하기"),
        model(hour: "10", content: "몰라"),
        model(hour: "11", content: "뭐라도"),
        model(hour: "12", content: "하겠찌")
    ]
}

//struct dateModel {
//    var month: String
//    var date: String
//    var time: [String]
//}


