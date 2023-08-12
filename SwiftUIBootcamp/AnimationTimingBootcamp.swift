//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-12.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var IsAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                IsAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: IsAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.7,
                    dampingFraction: 0.3,
                    blendDuration: 1.0
                ))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: IsAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: IsAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: IsAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
