@_private(sourceFile: "HomeView2.swift") import IConvert2
import SwiftUI
import SwiftUI

extension HomeView2_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/HomeView2.swift", line: 37)
        HomeView2(viewModel: ViewModel())
    #sourceLocation()
    }
}

extension HomeView2 {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/HomeView2.swift", line: 19)
        VStack {
            ScrollView(.vertical, showsIndicators: __designTimeBoolean("#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                LazyVGrid(columns: columns, spacing: __designTimeInteger("#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value", fallback: 50)) {
                    ForEach(sections, id: \.self) { section in
                        NavigationLink {
                            OptionsView
                        } label: {
                            viewModel.CreateSectionFor(picture: section)
                        }
                    }
                }
            }
        }
    #sourceLocation()
    }
}

import struct IConvert2.HomeView2
import struct IConvert2.HomeView2_Previews