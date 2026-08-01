//
//  Task.swift
//  TaskManager
//
//  Created by Miten Mistry on 21/07/26.
//

import Foundation

struct Task: Codable {
    let id: Int
    let todo: String
    let completd: Bool
    let userId: Int
}
