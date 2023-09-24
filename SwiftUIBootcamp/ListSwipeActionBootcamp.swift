//
//  ListSwipeActionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-24.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    Button("Archive"){}.tint(.green)
                    Button("Save"){}.tint(.red)
                    Button("Junk"){}.tint(.black)
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    Button("Share"){}.tint(.yellow)
                }
                
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
