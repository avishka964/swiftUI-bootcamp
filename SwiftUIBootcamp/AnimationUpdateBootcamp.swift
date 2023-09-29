//
//  AnimationUpdateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-29.
//

import SwiftUI

struct AnimationUpdateBootcamp: View {
    
    @State private var animate: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animate.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate ? .leading : .trailing)
                        .background(Color.gray)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
        }.animation(.spring(), value: animate)
    }
}

struct AnimationUpdateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdateBootcamp()
    }
}
