//
//  File.swift
//  DailyReport
//
//  Created by kxx: on 2022/12/26.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var tasks: [Task] = [] {
        didSet {
            saveItem()
        }
    }

    let saveKey: String = "task_list"
    
    init() {
        getData()
    }
    
    func addItem(hour: String, content: String) {
        tasks.append(Task(hour: hour, content: content))
    }

    func getData() {
        guard
            let data = UserDefaults.standard.data(forKey: saveKey),
            let savedItem = try? JSONDecoder().decode([Task].self, from: data)
        else { return }
        tasks = savedItem
    }

    func saveItem() {
        guard let saveitem = try? JSONEncoder().encode(tasks) else { return }
        UserDefaults.standard.set(saveitem, forKey: saveKey)
    }

}

