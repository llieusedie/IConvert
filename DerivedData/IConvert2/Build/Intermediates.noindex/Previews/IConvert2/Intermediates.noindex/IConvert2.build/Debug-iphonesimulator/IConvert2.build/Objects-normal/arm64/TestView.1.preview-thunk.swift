@_private(sourceFile: "TestView.swift") import IConvert2
import Foundation
import SwiftUI
import SwiftUI

extension TestView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/Ruler/TestView.swift", line: 74)
        TestView()
    #sourceLocation()
    }
}

extension TestView {
    @_dynamicReplacement(for: convert(input:output:)) private func __preview__convert(input: UnitLength, output: UnitLength) -> Double {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/Ruler/TestView.swift", line: 67)
        let inputInfo = Measurement(value: userOption, unit: input)
        let outputInfo = inputInfo.converted(to: output)
        return outputInfo.value
    #sourceLocation()
    }
}

extension TestView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/Ruler/TestView.swift", line: 21)
        Form {
//MARK: - Input options
            Section {
                Picker(__designTimeString("#20718.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "What is your input?"), selection: $userChoseInput) {
                    ForEach(availableUnits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text(__designTimeString("#20718.[2].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Choose your input"))
            }



            Section {
                TextField(__designTimeString("#20718.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Your number"), value: $userOption, format: .number)
                    .keyboardType(.decimalPad)
                    .focused($userValueIsFocused)
            }

//MARK: - Output options

            Section {
                Picker(__designTimeString("#20718.[2].[6].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value", fallback: "What is your output?"), selection: $userChoseOutput) {
                    ForEach(userUnits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text(__designTimeString("#20718.[2].[6].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Choose your output"))
            }


            Section {
                //result of calculations
            }

            Section {

            }
        }

    #sourceLocation()
    }
}

import struct IConvert2.TestView
import struct IConvert2.TestView_Previews