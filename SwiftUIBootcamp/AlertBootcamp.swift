//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-19.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.yellow
    
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(edges: .all)
            
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        return Alert(
            title: Text("This is the title"),
            message: Text("description"),
            primaryButton: .destructive(Text("DELETE"), action: {backgroundColor = .red}), secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
