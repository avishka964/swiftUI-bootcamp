//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-06.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(Color.red
//            .edgesIgnoringSafeArea(.all) old
            .ignoresSafeArea()
        )

        
        
        
        
//        ZStack {
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            //foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    Spacer()
//            }
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.red)
//    //            .edgesIgnoringSafeArea(.top)
////            .edgesIgnoringSafeArea(.all)
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
