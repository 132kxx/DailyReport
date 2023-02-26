//
//  File.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var tasks: [task] = []
    
    init() {
        for index in 8 ..< 24 {
            tasks.append(task(date: "27", hour: String(index), content: "내용을 입력해주세요"))
        }
    }
    
//    func initData(_ startTime: Int, _ endTime: Int, _ date: String) {
//        for index in 0 ..< endTime-startTime {
//            models.append(model(date: date, hour: String(startTime + index), content: "내용을 입력해주세요"))
//        }
//    }
//
//    func addData(date: String, hour: String, content: String) {
//        models.append(
//        model(date: date, hour: hour, content: content)
//        )
//    }
//
    func editData(index: Int?, content: String) {
        if let i = index {
            tasks[i].content = content
        } else {
            //
        }
    }
    
var dommy: [task] = [
    task(date: "27", hour: "8", content: "기상하기"),
    task(date: "27", hour: "10", content: "아슬란가기")
]

}

