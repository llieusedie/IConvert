@_private(sourceFile: "InformationStorageButton.swift") import IConvert2
import SwiftUI
import SwiftUI

extension InformationStorageButton_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/InformationStorage/InformationStorageButton.swift", line: 32)
        __designTimeSelection(InformationStorageButton(), "#8039.[2].[0].property.[0].[0]")
    #sourceLocation()
    }
}

extension InformationStorageButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/InformationStorage/InformationStorageButton.swift", line: 12)
        __designTimeSelection(NavigationLink(destination: __designTimeSelection(InformationStorageOptionsView(), "#8039.[1].[0].property.[0].[0].arg[0].value"), label: {
            __designTimeSelection(Image(systemName: __designTimeString("#8039.[1].[0].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "cpu"))
                .resizable()
                .scaledToFit()
                .frame(width: __designTimeInteger("#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 120), height: __designTimeInteger("#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[2].arg[1].value", fallback: 120), alignment: .center)
                .foregroundStyle(.black)
                .background(
                    __designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.arg[0].value", fallback: 25))
                        .frame(width: __designTimeInteger("#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[0].value", fallback: 150), height: __designTimeInteger("#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[0].arg[1].value", fallback: 150))
                        .foregroundColor(.white)
                        .shadow(radius: __designTimeInteger("#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value.modifier[2].arg[0].value", fallback: 10))
                        .padding(), "#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[4].arg[0].value")
                    )
                .padding(__designTimeInteger("#8039.[1].[0].property.[0].[0].arg[1].value.[0].modifier[5].arg[0].value", fallback: 30)), "#8039.[1].[0].property.[0].[0].arg[1].value.[0]")
        }), "#8039.[1].[0].property.[0].[0]")
    #sourceLocation()
    }
}

import struct IConvert2.InformationStorageButton
import struct IConvert2.InformationStorageButton_Previews