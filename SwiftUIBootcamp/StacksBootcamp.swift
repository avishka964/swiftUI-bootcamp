//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-18.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        VStack -> vertical
//        HStack -> horizontal
//        ZStack -> Zindex (back to front)
        VStack(spacing: 20){
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
        }
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
