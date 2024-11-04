//
//  TaskListView.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 4.11.2024.
//

import SwiftUI

struct TaskListView: View {
    
    let title: String
    @Binding var tasks: [Task]
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task)
        }
        .toolbar {
            Button {
                tasks.append(Task(title: "New Task"))
            } label: {
                Label("Add New Task", systemImage: "plus")
            }
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples()))
}
