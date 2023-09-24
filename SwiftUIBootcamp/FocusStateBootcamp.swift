//
//  FocusStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernameFocus: Bool
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($usernameFocus)
            
            Button("Action") {
                usernameFocus.toggle()
            }
            
        }
        .padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
