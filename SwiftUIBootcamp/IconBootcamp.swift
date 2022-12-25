//
//  IconBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-11.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "folder.fill.badge.plus")
            .renderingMode(.original)
            .font(.title)
//            .font(.system(size: 200))
            .foregroundColor(Color.pink)
    }
}

struct IconBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconBootcamp()
    }
}
