//
//  AppStorageBootCamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-20.
//

import SwiftUI

struct AppStorageBootCamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20){
            
            Text(currentUserName ?? "Add Name")
            
            if let userName = currentUserName {
                Text(userName)
            }
            
            Button("Save".uppercased()) {
                let name = "Malshan"
                currentUserName = name
//                UserDefaults.standard.setValue(name, forKey: "name")
            }
        }
        
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootCamp()
    }
}
