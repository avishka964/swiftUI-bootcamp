//
//  ToolbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-29.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                Text("Hey 🐵")
                    .foregroundColor(.white)
            }.navigationTitle("Toolbar")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Image(systemName: "heart.fill")
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "gear")
                    }
                }
//                .navigationBarHidden(true)
//                .toolbar(.hidden, for: .navigationBar)
//                .toolbarBackground(.hidden, for: .navigationBar)
                .navigationBarTitleDisplayMode(.inline)
                .toolbarTitleMenu {
                    Button("Menu 1") {}
                    Button("Menu 2") {}
                }
            
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
