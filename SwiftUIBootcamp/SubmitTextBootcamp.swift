//
//  SubmitTextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-28.
//

import SwiftUI

struct SubmitTextBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        TextField("Placeholder..", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("Hello")
            }
        
        TextField("Placeholder..", text: $text)
            .submitLabel(.search)
            .onSubmit {
                print("Hello")
            }
    }
}

struct SubmitTextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextBootcamp()
    }
}
