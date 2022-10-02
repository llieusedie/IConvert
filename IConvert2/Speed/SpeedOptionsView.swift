//
//  SpeedOptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 01.10.2022.
//

import SwiftUI

struct SpeedOptionsView: View {
    @FocusState private var userValueIsFocused: Bool
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    @State private var input = ""
    
    enum Unit: String, CaseIterable {
        case kilometersPerHour = "kph"
        case milesPerHour = "mph"
        case metersPerSecond = "mps"
        case knots 
        
        var unitSpeed: UnitSpeed {
            switch self {
            case .metersPerSecond: return UnitSpeed.metersPerSecond
            case .milesPerHour: return UnitSpeed.milesPerHour
            case .kilometersPerHour: return UnitSpeed.kilometersPerHour
            case .knots: return UnitSpeed.knots
            }
        }
    }
    let speedUnits = Unit
        .allCases
        .compactMap { $0.rawValue } 
    
    var output: Double {
        guard let input = Double(self.input) else {
            return 0
        } 
        guard let inputUnit = Unit(rawValue: speedUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Unit(rawValue: speedUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitSpeed)
            .converted(to: outputUnit.unitSpeed)
            .value
    }
    
    var body: some View {
        Form {
            Section {
                Picker("What is your input?", selection: $inputUnit) {
                    ForEach(0..<speedUnits.count, id: \.self) {
                        Text(self.speedUnits[$0])
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
                    ForEach(0..<speedUnits.count, id: \.self) {
                        Text(self.speedUnits[$0])
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
        }
        .navigationTitle("Speed")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SpeedOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SpeedOptionsView()
    }
}
