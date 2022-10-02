@_private(sourceFile: "OptionsView.swift") import IConvert2
import SwiftUI
import SwiftUI

extension OptionsView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/OptionsView.swift", line: 63)
        OptionsView(userChoseInput: __designTimeString("#12553.[2].[0].property.[0].[0].arg[0].value", fallback: "Meter"), userChoseOutput: __designTimeString("#12553.[2].[0].property.[0].[0].arg[1].value", fallback: "Kilometer"), userUnits: [__designTimeString("#12553.[2].[0].property.[0].[0].arg[2].value.[0]", fallback: "meters"), __designTimeString("#12553.[2].[0].property.[0].[0].arg[2].value.[1]", fallback: "kilometers")])
    #sourceLocation()
    }
}

extension OptionsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/paulkirnoz/Library/Mobile Documents/com~apple~CloudDocs/Desktop/important personal/app development/IConvert/IConvert2/OptionsView.swift", line: 18)
        Form {
            Section {
                Picker(__designTimeString("#12553.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "What is your input?"), selection: $userChoseInput) {
                    ForEach(userUnits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text(__designTimeString("#12553.[1].[5].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Choose your input"))
            }
            .textCase(nil)


            Section {
                TextField(__designTimeString("#12553.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value.[0].arg[0].value", fallback: "Your number"), value: $userOption, format: .number)
                    .keyboardType(.decimalPad)
                    .focused($userValueIsFocused)
            }
            Section {
                Picker(__designTimeString("#12553.[1].[5].property.[0].[0].arg[0].value.[2].arg[0].value.[0].arg[0].value", fallback: "What is your output?"), selection: $userChoseOutput) {
                    ForEach(userUnits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text(__designTimeString("#12553.[1].[5].property.[0].[0].arg[0].value.[2].arg[1].value.[0].arg[0].value", fallback: "Choose your output"))
            }
            .textCase(nil)

            Section {
                //final result comes here
            }
            .font(.headline)
            .textSelection(.enabled)

        }
        .navigationTitle(__designTimeString("#12553.[1].[5].property.[0].[0].modifier[0].arg[0].value", fallback: "IConvert: Lengths"))

    #sourceLocation()
    }
}

import struct IConvert2.OptionsView
import struct IConvert2.OptionsView_Previews