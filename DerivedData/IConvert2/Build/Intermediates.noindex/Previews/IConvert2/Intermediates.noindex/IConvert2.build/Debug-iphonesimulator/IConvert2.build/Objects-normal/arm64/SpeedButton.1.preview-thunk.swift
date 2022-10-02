@_private(sourceFile: "SpeedButton.swift") import IConvert2
import SwiftUI
import SwiftUI

extension SpeedButton_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/Speed/SpeedButton.swift", line: 32)
        SpeedButton()
    #sourceLocation()
    }
}

extension SpeedButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/Speed/SpeedButton.swift", line: 12)
        NavigationLink(destination: SpeedOptionsView(), label: {
            Image(systemName: __designTimeString("#10664.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "speedometer"))
                .resizable()
                .scaledToFit()
                .frame(width: __designTimeInteger("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 120), height: __designTimeInteger("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 120), alignment: .center)
                .foregroundStyle(Color(__designTimeString("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[3].arg[0].value.arg[0].value", fallback: "darkMode-Details")))
                .background(
                    RoundedRectangle(cornerRadius: __designTimeInteger("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.arg[0].value", fallback: 25))
                        .frame(width: __designTimeInteger("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 150), height: __designTimeInteger("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[1].value", fallback: 150))
                        .foregroundColor(Color(__designTimeString("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[1].arg[0].value.arg[0].value", fallback: "strong")))
                        .shadow(color: .gray, radius: __designTimeInteger("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[2].arg[1].value", fallback: 10))
                        .padding()
                )
                .padding(__designTimeInteger("#10664.[1].[0].property.[0].[0].arg[1].value.[0].modifier[5].arg[0].value", fallback: 30))
        })
    #sourceLocation()
    }
}

import struct IConvert2.SpeedButton
import struct IConvert2.SpeedButton_Previews