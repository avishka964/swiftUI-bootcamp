//
//  TextBootCamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-11.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello World".uppercased())
        //            .font(.body)
        //            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        //            .foregroundColor(Color.blue)
        //            .italic()
        //            .underline(true, color: Color.green)
        //            .font(.system(size: 24, weight:       .semibold, design: .serif))
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                    .frame(width: 200, height: 100, alignment: .center)
                    .minimumScaleFactor(0.1)
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
