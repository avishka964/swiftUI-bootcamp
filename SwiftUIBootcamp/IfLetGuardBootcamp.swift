//
//  IfLetGuardBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-17.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var displayText: String? = nil
    @State var loading: Bool = false
    @State var currentUserId: Int? = 123
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                //This is a bad code practice don't use
//                Text(displayText!)
//                    .font(.title)
                
                if loading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        loading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            loading = false
            displayText = "This is the new data"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserId else {
            displayText = "Error"
            return
        }
        loading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            loading = false
            displayText = "This is the new data \(userID)"
        }
        
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
