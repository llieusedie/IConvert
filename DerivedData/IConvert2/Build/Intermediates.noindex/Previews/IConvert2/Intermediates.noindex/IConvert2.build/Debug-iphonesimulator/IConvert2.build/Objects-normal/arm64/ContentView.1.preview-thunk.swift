@_private(sourceFile: "ContentView.swift") import IConvert2
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/ContentView.swift", line: 42)
        ContentView()
            .preferredColorScheme(.light)
    #sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/ContentView.swift", line: 17)
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: __designTimeBoolean("#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value", fallback: false)) {
                    //                    LazyVGrid(columns: columns, alignment: .center) {
                    VStack {
                        HStack {
                            RulerButton()
                            TemperatureButton()
                        }
                        HStack {
                            ClockButton()
                            DropButton()
                        }
                    }
                    Spacer()
                }
                .navigationTitle(__designTimeString("#4644.[1].[0].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value", fallback: "IConvert"))
            }
        }
    #sourceLocation()
    }
}

import struct IConvert2.ContentView
import struct IConvert2.ContentView_Previews