//
//  TaskRow.swift
//  TaskManager
//
//  Created by Miten Mistry on 21/07/26.
//

import SwiftUI

struct TaskRow: View {
    @EnvironmentObject var vm: TaskViewModel
    
    var tasks: Task
    var body: some View {
        VStack(spacing:20) {
            Text(task.title)
                .font(.title)
            Button(task.iscompleted ? "Mark Pending" : "Complete") {
                vm.toggle(task: task)
            }
        }
        .navigationTitle("Details")
    }
}
