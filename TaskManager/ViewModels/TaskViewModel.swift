//
//  Task.swift
//  TaskManager
//
//  Created by Miten Mistry on 21/07/26.
//

import Combine

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(title: String) {
        guard !title.isEmpty else {return}
        tasks.append(Task(title: title))
    }
    
    func toggle(task: Task) {
        guard let index = tasks.firstIndex(where: {$0.id == task.id}) else {
            return
        }
        
        tasks[index].isCompleted.toogle()
    }
    
    func delete(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}
