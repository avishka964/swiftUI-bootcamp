//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-06.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            ButtonView(backgroundColor: $backgroundColor)
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var btnColor: Color = Color.yellow
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.pink
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(btnColor)
                .cornerRadius(10)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
