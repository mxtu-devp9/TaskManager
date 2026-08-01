//
//  HomeView.swift
//  TaskManager
//
//  Created by Miten Mistry on 21/07/26.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: TaskViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.tasks) { task in
                    NavigationLink {
                        TaskRow(task: task)
                    } label {
                        HStack {
                            Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                            
                            Text(task.title)
                        }
                    }
                }
                .onDelete(perform: vm.delete)
            }
            
            .navigationTitle("Tasks")
            
            .toolbar {
                NavigationLink("Add") {
                    AddTaskView()
                }
            }
        }
    }
}
