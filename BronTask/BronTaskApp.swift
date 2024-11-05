//
//  BronTaskApp.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 2.11.2024.
//

import SwiftUI

@main
struct BronTaskApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Task") {
                Button("Add New Task") {
                    
                }
                .keyboardShortcut(KeyEquivalent("r"), modifiers: .command)
            }
            CommandGroup(after: .newItem) {
                Button("Add New Group") {
                    
                }
            }
        }
        
        WindowGroup("Special Window") {
            Text("special window")
                .frame(minWidth: 200, idealWidth: 300, minHeight: 200)
        }
        .defaultPosition(.leading)
    }
}
