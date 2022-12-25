//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-18.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: 100, height: 100)
            
            Spacer()
                
            Rectangle()
                .frame(width: 100, height: 100)
        }
    }
    
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
