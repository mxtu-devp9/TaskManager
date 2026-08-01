//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Miten Mistry on 21/07/26.
//

import SwiftUI

@main
struct TaskManagerApp: App {

    @StateObject var vm = TaskViewModel()

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(vm)
        }
    }
}
