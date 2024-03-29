//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-12.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }).fullScreenCover(isPresented:$showSheet, content: {
                SecondScreen()
            })
//            .sheet(isPresented:$showSheet, content: {
//                SecondScreen()
//            })
            
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
