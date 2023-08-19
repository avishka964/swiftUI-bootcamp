//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-08-19.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
       Toggle(
        isOn: $toggleIsOn, label: {
            Text("Label")
        }).toggleStyle(SwitchToggleStyle(tint: Color(.red)))
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
