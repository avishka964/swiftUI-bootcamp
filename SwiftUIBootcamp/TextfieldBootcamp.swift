//
//  TextfieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-19.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        VStack {
            TextField("Type somthing here...", text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(.red)
                .font(.headline)
            
            Button(action: {
                if textValid() {
                    saveText()
                }
            }, label: {
                Text("Save".uppercased())
                    .padding()
                    .background(textValid() ? Color.blue : Color.gray)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.headline)
            })
            .disabled(!textValid())
            
            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }
        }
    }
    
    func textValid() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
    
    
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}
