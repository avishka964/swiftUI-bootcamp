//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-10.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    var body: some View {
        
        VStack {
            HStack {
                Text("\(selection)")
            }
            Picker(
                selection: $selection,
                label: Text("Picker"),
                content: {
                    Text("1").tag("1")
                    Text("2").tag("2")
                    Text("3").tag("3")
            }).pickerStyle(.wheel)
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
