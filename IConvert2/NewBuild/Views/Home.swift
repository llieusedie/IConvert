//
//  Home.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 13.10.2022.
//

import SwiftUI

struct Home: View {
    @ObservedObject var vm = ViewModel()
    let columns = [
        GridItem(.flexible(minimum: 40), spacing: -20),
        GridItem(.flexible(minimum: 40), spacing: -20),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    LazyVGrid(columns: columns, spacing: 20) { 
                        ForEach(vm.categories, id: \.name) { category in
                            NavigationLink { 
                                OptionsView(options: IconsModel(name: category.name, image: category.image))
                            } label: { 
                                IconView(name: category.name, image: category.image)   
                            }
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("iConvert")
        }
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
