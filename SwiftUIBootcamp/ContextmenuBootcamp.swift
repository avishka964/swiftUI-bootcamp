//
//  ContextmenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-19.
//

import SwiftUI

struct ContextmenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("This is a Text 1")
                .font(.headline)
            Text("This is a Text 2")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .green
            }, label: {Label("Button 1", systemImage: "flame.fill")})
        })
    }
}

struct ContextmenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextmenuBootcamp()
    }
}
