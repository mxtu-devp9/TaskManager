//
//  AddTaskView.swift
//  TaskManager
//
//  Created by Miten Mistry on 21/07/26.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var vm: TaskViewModel
    @Environment(\.dismiss) var dismiss
    @State private var title = ""
    
    var body: some View {
        VStack(spacing:20) {
            TextField("Task", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button("Save") {
                vm.addTask(title: title)
                
                dismiss()
            }
            Spacer()
        }
        .padding()
        .navigationTitle("New Task")
    }
}
