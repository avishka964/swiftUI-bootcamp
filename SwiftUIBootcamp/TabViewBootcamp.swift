//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-16.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                Image(systemName: "house.fill")
//                Text("Home")
//                }.tag(0)
//
//            Text("Browse")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }.tag(1)
//            Text("Profile")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }.tag(2)
//        }.accentColor(.blue)
        
        
        TabView {
            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.red)
            RoundedRectangle(cornerRadius: 25.0).foregroundColor(.green)
            RoundedRectangle(cornerRadius: 25.0)
        }.frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                Text("Home")
                    .font(.largeTitle)
                .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
            
            
        }
    }
}
