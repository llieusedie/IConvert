//
//  TimeOptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 01.10.2022.
//

import SwiftUI

struct TimeOptionsView: View {
    @FocusState private var userValueIsFocused: Bool
    
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    @State private var input = ""
    
    enum Unit: String, CaseIterable {
        case milliseconds = "ms"
        case seconds
        case minutes
        case hours
        
        var unitDuration: UnitDuration {
            switch self {
            case .milliseconds: return UnitDuration.milliseconds
            case .seconds: return UnitDuration.seconds
            case .minutes: return UnitDuration.minutes
            case .hours: return UnitDuration.hours
            }
        }
    }
    
    let durationUnits = Unit 
        .allCases
        .compactMap { $0.rawValue }
    
    var output: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Unit(rawValue: durationUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Unit(rawValue: durationUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitDuration)
            .converted(to: outputUnit.unitDuration)
            .value
    }
    
    var body: some View {
        Form {
            Section {
                Picker("What is your input?", selection: $inputUnit) {
                    ForEach(0..<durationUnits.count, id: \.self) {
                        Text(self.durationUnits[$0])
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Choose your input")
                    .textCase(nil)
            }
            
            Section {
                TextField("Enter the measurement", text: $input)
                    .keyboardType(.decimalPad)
                    .focused($userValueIsFocused)
            }
            
            //MARK: - Output options
            
            Section {
                Picker("What is your output?", selection: $outputUnit) {
                    ForEach(0..<durationUnits.count, id: \.self) {
                        Text(self.durationUnits[$0])
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Choose your output")
                    .textCase(nil)
            }
            
            
            Section {
               Text("\(output, specifier: "%.2f")")
            } header: {
                Text("Result")
                    .textCase(nil)
            }
            
            .navigationTitle("Time")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TimeOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        TimeOptionsView()
    }
}
