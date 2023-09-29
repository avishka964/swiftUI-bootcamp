//
//  ResizableSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-29.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click Me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            NextView()
//                .presentationDetents([.medium, .large])
                .presentationDetents([.fraction(0.5)])
        }
    }
}

struct NextView: View {
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            Text("Hello, World")
        }
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
