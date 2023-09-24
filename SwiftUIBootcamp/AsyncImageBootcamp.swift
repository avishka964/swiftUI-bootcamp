//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-20.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            case .failure:
                Image(systemName: "questionmark")
            default:
                Image(systemName: "questionmark")
            }
            
        }
        
        //        AsyncImage(url: url, content: { image in
        //            image.resizable()
        //                .scaledToFit()
        //                .frame(width: 100, height: 100)
        //        }, placeholder: {
        //            ProgressView()
        //        })
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
