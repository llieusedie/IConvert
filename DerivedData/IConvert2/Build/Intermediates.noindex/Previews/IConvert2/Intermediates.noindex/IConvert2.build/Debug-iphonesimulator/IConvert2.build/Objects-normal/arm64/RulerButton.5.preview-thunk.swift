@_private(sourceFile: "RulerButton.swift") import IConvert2
import Foundation
import SwiftUI
import SwiftUI

extension RulerButton_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/Ruler/RulerButton.swift", line: 34)
        __designTimeSelection(RulerButton(), "#4625.[3].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension RulerButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/Ruler/RulerButton.swift", line: 13)
            __designTimeSelection(NavigationLink(destination: __designTimeSelection(LengthOptionsView(), "#4625.[2].[0].property.[0].[0].arg[0].value"), label: {
                __designTimeSelection(Image(systemName: __designTimeString("#4625.[2].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "ruler"))
                    .resizable()
                    .scaledToFit()
                    .frame(width: __designTimeInteger("#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 120), height: __designTimeInteger("#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 120), alignment: .center)
                    .foregroundStyle(.black)
                    .background(
                        __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.arg[0].value", fallback: 25))
                            .frame(width: __designTimeInteger("#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 150), height: __designTimeInteger("#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[1].value", fallback: 150))
                            .foregroundColor(.white)
                            .shadow(radius: __designTimeInteger("#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[2].arg[0].value", fallback: 10))
                            .padding(), "#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value")
                        )
                    .padding(__designTimeInteger("#4625.[2].[0].property.[0].[0].arg[1].value.[0].modifier[5].arg[0].value", fallback: 30)), "#4625.[2].[0].property.[0].[0].arg[1].value.[0]")
            }), "#4625.[2].[0].property.[0].[0]")
        #sourceLocation()
    }
}

import struct IConvert2.RulerButton
import struct IConvert2.RulerButton_Previews