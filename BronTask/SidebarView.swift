//
//  SidebarView.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 3.11.2024.
//

import SwiftUI

struct SidebarView: View {
    
    let userCreatedGroups: [TaskGroup]
    @State private var selection = TaskSection.all
    
    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TaskSection.allCases) { selection in
                    Label(selection.displayName, systemImage: selection.iconName)
                        .tag(selection)
                }
            }
            
            Section("Your Groups") {
                ForEach(userCreatedGroups) { group in
                    Label(group.title, systemImage: "folder.badge.plus")
                        .tag(TaskSection.list(group))
                }
            }
            
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: TaskGroup.exapmles())
        .listStyle(.sidebar)
}
