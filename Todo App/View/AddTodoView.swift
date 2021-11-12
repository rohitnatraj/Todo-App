//
//  AddTodoView.swift
//  Todo App
//
//  Created by Natraj, Rohit on 11/12/21.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    let priorities = ["High", "Normal", "Low"]
    
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: - Todo Name
                    TextField("Todo", text: $name)
                    
                    // MARK: - Todo Priority
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    // MARK: - Save Button
                    Button(action: {
                        print("Save a new Todo item")
                    }) {
                       Text("Save")
                    }
                    
                }
                Spacer()
                
            } // VStack
            .navigationBarTitle("New Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
            }
            )
        } // Navigation
    }
}

// MARK: - Preview
struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
