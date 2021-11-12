//
//  ContentView.swift
//  Todo App
//
//  Created by Natraj, Rohit on 11/12/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // MARK: - Properties
    @State private var showingAddTodoView = false

    // MARK: - Body
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                Text("Hello World!")
            } // List
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                self.showingAddTodoView.toggle()
                }) {
                    Image(systemName: "plus")
                }) // Add Button
            .sheet(isPresented: $showingAddTodoView) {
                AddTodoView()
            }
        } // Navigation
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
