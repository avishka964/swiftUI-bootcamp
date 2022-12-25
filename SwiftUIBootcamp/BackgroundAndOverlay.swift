//
//  BackgroundAndOverlay.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-18.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110)
            )
    }
}

struct BackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlay()
    }
}
