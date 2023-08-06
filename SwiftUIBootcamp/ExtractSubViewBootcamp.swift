//
//  ExtractSubViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-06.
//

import SwiftUI

struct ExtractSubViewBootcamp: View {
    var body: some View {
        ZStack {
            Color(.yellow)
                .ignoresSafeArea()
           
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apple", count: 1, color: .red)
            MyItem(title: "Orange", count: 23, color: .orange)
            MyItem(title: "Grapes", count: 3, color: .purple)
        }
    }
    
}

struct ExtractSubViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
