//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-28.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello")
            Text("Hello")
            Group {
                Text("Hello")
                Text("Hello")
            }.foregroundColor(.green)
        }.foregroundColor(.red)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
