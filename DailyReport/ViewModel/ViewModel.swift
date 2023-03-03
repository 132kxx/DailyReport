//
//  File.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var tasks: [Task] = []
        
    init() {
        getData()
    }

    func getData() {
        let dommyData: [Task] = [
            Task(hour: "8", content: "기상하기"),
            Task(hour: "9", content: "배드민턴"),
            Task(hour: "10", content: "코딩")
        ]
        
        tasks.append(contentsOf: dommyData)
    }
//
//    func addData(date: String, hour: String, content: String) {
//        models.append(
//        model(date: date, hour: hour, content: content)
//        )
//    }
//
//    func editData(index: Int?, content: String) {
//        if let i = index {
//            tasks[i].content = content
//        } else {
//            //
//        }
//    }
//

}

