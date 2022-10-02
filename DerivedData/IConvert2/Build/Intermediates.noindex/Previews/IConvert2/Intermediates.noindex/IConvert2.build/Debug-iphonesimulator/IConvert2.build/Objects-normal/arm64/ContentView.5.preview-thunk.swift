@_private(sourceFile: "ContentView.swift") import IConvert2
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/ContentView.swift", line: 42)
        __designTimeSelection(ContentView()
            .preferredColorScheme(.light), "#4644.[2].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/ContentView.swift", line: 17)
        __designTimeSelection(NavigationView {
            __designTimeSelection(VStack {
                __designTimeSelection(ScrollView(.vertical, showsIndicators: __designTimeBoolean("#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                    //                    LazyVGrid(columns: columns, alignment: .center) {
                    __designTimeSelection(VStack {
                        __designTimeSelection(HStack {
                            __designTimeSelection(RulerButton(), "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[0]")
                            __designTimeSelection(TemperatureButton(), "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0].arg[0].value.[1]")
                        }, "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[0]")
                        __designTimeSelection(HStack {
                            __designTimeSelection(ClockButton(), "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[0]")
                            __designTimeSelection(DropButton(), "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1].arg[0].value.[1]")
                        }, "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0].arg[0].value.[1]")
                    }, "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[0]")
                    __designTimeSelection(Spacer(), "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[2].value.[1]")
                }
                .navigationTitle(__designTimeString("#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "IConvert")), "#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
            }, "#4644.[1].[0].property.[0].[0].arg[0].value.[0]")
        }, "#4644.[1].[0].property.[0].[0]")
    #sourceLocation()
    }
}

import struct IConvert2.ContentView
import struct IConvert2.ContentView_Previews