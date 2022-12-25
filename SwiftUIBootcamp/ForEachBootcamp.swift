//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-18.
//

import SwiftUI

struct ForEachBootcamp: View {

    let data: [String] = ["Sam", "Jhone", "Mark"]
    

    var body: some View {
        VStack{
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
