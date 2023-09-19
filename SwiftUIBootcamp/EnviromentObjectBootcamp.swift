//
//  EnviromentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Avishka Kapuruge on 2023-09-19.
//

import SwiftUI

class EnviromentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["cat", "dog", "bird"])
    }
}

struct EnviromentObjectBootcamp: View {
    
    @StateObject var viewModel: EnviromentViewModel = EnviromentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) {item in
                    NavigationLink(
                        destination: DetailsView(selectedItem: item), label: {
                            Text(item)
                        }
                    )
                }
            }
        }.environmentObject(viewModel)
    }
}

struct DetailsView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            NavigationLink(destination: FinalView(), label: {Text(selectedItem)})
            
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnviromentViewModel

    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) {item in
                        Text(item)
                    }
                }
            }
        }
    }
}

struct EnviromentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjectBootcamp()
//        DetailsView(selectedItem: "pig")
//        FinalView()
    }
}
