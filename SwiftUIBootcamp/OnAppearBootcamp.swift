//
//  OnAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-17.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text"
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }.onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "New text"
                }
            }).onDisappear(perform: {
                myText = "End text"
            })
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
