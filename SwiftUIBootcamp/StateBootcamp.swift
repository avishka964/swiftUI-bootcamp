//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-06.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            VStack(spacing: 20){
                Text(myTitle)
                Text("Count: \(count)")
                
                HStack(spacing: 20) {
                    Button("Button 1"){
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2"){
                        backgroundColor = .blue
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
