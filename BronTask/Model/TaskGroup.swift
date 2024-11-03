//
//  TaskGroup.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 3.11.2024.
//

import Foundation


struct TaskGroup: Identifiable, Hashable {
    let id = UUID()
    var title: String
    let creationDate: Date
    var tasks: [Task]
    
    init(title: String, tasks: [Task] = []) {
        self.title = title
        self.creationDate = Date()
        self.tasks = tasks
    }
    
    static func example() -> TaskGroup {
        let task1 = Task(title: "Satın Al")
        let task2 = Task(title: "Projeyi Bitir")
        let task3 = Task(title: "Dişçiyi Ara")
        
        var group = TaskGroup(title: "Yapılacaklar")
        group.tasks = [task1, task2, task3]
        return group
    }
    
    static func exapmles() -> [TaskGroup] {
        let group1 = TaskGroup.example()
        let group2 = TaskGroup(title: "Yeni Liste")
        return [group1, group2]
    }
    
}
