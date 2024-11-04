//
//  TaskListView.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 3.11.2024.
//

import SwiftUI

struct TaskListView: View {
    
    let title: String
    let tasks: [Task]
    
    var body: some View {
        List(tasks) { task in
            HStack {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                Text(task.title)
            }
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: Task.examples())
}
