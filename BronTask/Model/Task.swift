//
//  Task.swift
//  BronTask
//
//  Created by Tahir Atakan Can on 3.11.2024.
//

import Foundation

struct Task: Identifiable, Hashable {
    
    let id = UUID()
    let title: String
    let isCompleted: Bool
    let dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Figma Design", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "İlk olarak Figma İndir"),
            Task(title: "Yaptığın işleri Figma’da görebilirsiniz", isCompleted: true),
            Task(title: "Figma tasarımına çalışın", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "Xcode Swift"),
            Task(title: "Ocak 1 e kadar doluyum"),
            Task(title: "Kendine dirayetini koy."),
            Task(title: "İnsanlık adına sınırları zorlayanlar", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
            Task(title: "ve kimileri onları deli olarak görse de…"),
            Task(title: "Biz onlarda dâhilik görüyoruz", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
            Task(title: "çünkü dünyayı değiştirebileceklerine inananlar", dueDate: Calendar.current.date(byAdding: .day, value: 3, to: Date())!),
            Task(title: "bunu gerçekten yapanlardır.")

        ]
    }
    
}
