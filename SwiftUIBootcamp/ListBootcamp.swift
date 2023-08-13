//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-13.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "carrot", "potato"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit.capitalized)
                    }.onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
                Section(header: Text("Vegitables")) {
                    ForEach(veggies, id: \.self) {veggi in
                        Text(veggi.capitalized)
                    }
                }
            }
//            .listStyle(.grouped)
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indecies: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indecies, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut")
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
