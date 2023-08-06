//
//  ShapeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2022-12-11.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
                Circle()
//                Ellipse()
        //        Capsule(style: .circular)
//                Rectangle()
//                RoundedRectangle(cornerRadius: 20)
        //            .fill(Color.green)
        //            .foregroundColor(.pink)
        //            .stroke()
        //            .stroke(Color.green)
        //            .stroke(Color.blue, lineWidth: 10)
        //            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
        //            .trim(from: 0.2, to: 1.0)
        //            .stroke(Color.pink, lineWidth: 50)
                    .frame(width: 200, height: 100)
    }
}

struct ShapeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootcamp()
    }
}
