//
//  InitilizeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-18.
//

import SwiftUI

struct InitilizeBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruits){
        self.count = count

        
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruits {
        case apple
        case orange
    }
    
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitilizeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitilizeBootcamp(count: 20, fruit: .apple)
            InitilizeBootcamp(count: 10, fruit: .orange)
        }
    }
}
