@_private(sourceFile: "HomeView2.swift") import IConvert2
import SwiftUI
import SwiftUI

extension HomeView2_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/HomeView2.swift", line: 37)
        __designTimeSelection(HomeView2(viewModel: __designTimeSelection(ViewModel(), "#1970.[2].[0].property.[0].[0].arg[0].value")), "#1970.[2].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension HomeView2 {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/HomeView2.swift", line: 19)
        __designTimeSelection(VStack {
            __designTimeSelection(ScrollView(.vertical, showsIndicators: __designTimeBoolean("#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                __designTimeSelection(LazyVGrid(columns: __designTimeSelection(columns, "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value"), spacing: __designTimeInteger("#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value", fallback: 50)) {
                    __designTimeSelection(ForEach(__designTimeSelection(sections, "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[0].value"), id: \.self) { section in
                        __designTimeSelection(NavigationLink {
                            __designTimeSelection(OptionsView, "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[2].value.[0].arg[0].value.[0]")
                        } label: {
                            __designTimeSelection(viewModel.CreateSectionFor(picture: __designTimeSelection(section, "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0].arg[0].value")), "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[2].value.[0].arg[1].value.[0]")
                        }, "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0].arg[2].value.[0]")
                    }, "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[2].value.[0]")
                }, "#1970.[1].[3].property.[0].[0].arg[0].value.[0].arg[2].value.[0]")
            }, "#1970.[1].[3].property.[0].[0].arg[0].value.[0]")
        }, "#1970.[1].[3].property.[0].[0]")
    #sourceLocation()
    }
}

import struct IConvert2.HomeView2
import struct IConvert2.HomeView2_Previews