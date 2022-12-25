//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-11.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("monster")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 200, height: 200)
//            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                Rectangle()
//                Ellipse()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
