//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-17.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: Properties
    @State var data: [String] = [
        "Apple", "Orange", "Bannana"
    ]
    
    @State var showAlert: Bool = false
    
    //MARK: Body
    
    /*
     working copy
     1) fix title
     2) fix alert
     
     */
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documatation Bootcamp")
            .navigationBarItems(trailing:
                Button("Alert" , action: {
                showAlert.toggle()
            })
            ).alert(isPresented: $showAlert, content: {
                getAlert(text: "this is an alert")
            })
        }
    }
    
    //MARK: Function
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
