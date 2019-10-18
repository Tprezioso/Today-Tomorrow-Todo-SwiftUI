//
//  Task.swift
//  TodayTomorrowTodoSwiftUI
//
//  Created by Thomas Prezioso on 10/18/19.
//  Copyright © 2019 Thomas Prezioso. All rights reserved.
//

import SwiftUI

struct Task: Equatable, Hashable, Codable, Identifiable {
    let id: UUID
    var title: String
    var isDone: Bool
    var createdAt: Date
    
    init(title: String, isDone: Bool) {
        self.id = UUID()
        self.title = title
        self.isDone = isDone
        self.createdAt = Date()
    }
}
