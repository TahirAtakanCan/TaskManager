//
//  ContentView.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 2.11.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: TaskSection? = TaskSection.all
    
    @State private var allTask = Task.examples()
    @State private var userCreatedGroups: [TaskGroup] = TaskGroup.exapmles()
    @State private var searchTerm: String = ""
    
    
    var body: some View {
        NavigationSplitView {
            SidebarView(userCreatedGroups: $userCreatedGroups, selection: $selection).searchable(text: $searchTerm, placement: .sidebar)
        } detail: {
            
            switch selection {
            case .all:
                TaskListView(title: "All", tasks: $allTask)
            case .done:
                StaticTaskListView(title: "All", tasks: allTask.filter({ $0.isCompleted}))
            case .upcoming:
                StaticTaskListView(title: "All", tasks: allTask.filter({ !$0.isCompleted}))
            case .list(let taskGroup):
                StaticTaskListView(title: taskGroup.title, tasks: taskGroup.tasks)
            case .none:
                Text("No selection")
            }
        }
    }
}

#Preview {
    ContentView()
}
