//
//  ContentView.swift
//  TodayTomorrowTodoSwiftUI
//
//  Created by Thomas Prezioso on 10/16/19.
//  Copyright © 2019 Thomas Prezioso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var newToDoItem = ""
    
    @State var arrayList = [Task]()
    var body: some View {
       
        NavigationView {
            List {
                Section(header: Text("Whats Next?")) {
                    HStack {
                        TextField("New Item", text: self.$newToDoItem)
                        Button(action: {
                            let todoItem = Task(title: self.newToDoItem, isDone: false)
                            self.arrayList.append(todoItem)
                        }){
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
                
                Section(header: Text("Today")) {
                        ForEach(arrayList) { item in
                            Text("\(item.title)")
                        }.onDelete { (indexSet) in
                            self.arrayList.removeFirst(indexSet.count)
                        }
                }
            }
            .navigationBarTitle(Text("My List"))
            .navigationBarItems(trailing: EditButton())
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
