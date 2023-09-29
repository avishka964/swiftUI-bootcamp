//
//  MenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-29.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu("CLick Me") {
            Button("One"){}
            Button("Two"){}
        }
    }
}

struct MenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootcamp()
    }
}
