//
//  AddTaskView.swift
//  TodoApp
//
//  Created by Efe Koç on 6.07.2023.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("TextColor"))
            
            TextField(
                "Enter your task here",
                text: $title
            )
                .textFieldStyle(.roundedBorder)

            Button {
                // Only adding a task if user added something in the TextField
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.horizontal)
                    .background(Color("SecondaryColor"))
                    .cornerRadius(30)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color("BackgroundColor"))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
