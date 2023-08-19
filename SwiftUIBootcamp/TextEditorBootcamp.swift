//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-19.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        VStack {
            TextEditor(text: $textEditorText)
            Button(action: {
                savedText = textEditorText
            }, label: {
                Text("Save")
            })
            .padding()
            
            Text(savedText)
                .padding()
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
