//
//  BadgesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-24.
//

import SwiftUI

//List
//TabView

struct BadgesBootcamp: View {
    var body: some View {
//        TabView {
//            Color.red.tabItem {
//                Image(systemName: "heart.fill")
//                Text("Hello")
//            }.badge(3)
//
//            Color.green.tabItem {
//                Image(systemName: "heart.fill")
//                Text("Hello")
//            }
//
//            Color.yellow.tabItem {
//                Image(systemName: "heart.fill")
//                Text("Hello")
//            }
//        }
        
        List {
            Text("Hello world").badge(3)
            Text("Hello world")
            Text("Hello world")
            Text("Hello world")
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
