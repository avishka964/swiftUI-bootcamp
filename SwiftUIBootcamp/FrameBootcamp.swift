//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-11.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
//            .frame(width: 200, height: 200, alignment: .trailing)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
