//
//  TaskSection.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 3.11.2024.
//

import Foundation


enum TaskSection: Identifiable, CaseIterable, Hashable {
    
    
    case all
    case done
    case upcoming
    case list(TaskGroup)
    
    var id: String {
        switch self {
            case .all: 
                    "all"
            case .done: 
                    "done"
            case .upcoming: 
                    "upcoming"
            case .list(let taskGroup):
                    taskGroup.id.uuidString
        }
    }
    
    var iconName: String {
        switch self {
            case .all:
                "star.circle.fill"
            case .done:
                "checkmark.circle.fill"
            case .upcoming:
                "calendar.badge.plus"
            case .list(_):
                "folder"
        }
    }
    
    static var allCases: [TaskSection] {
        [.all, .done, .upcoming]
    }
    
}
