//
//  VolumeOptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 01.10.2022.
//

import SwiftUI

struct VolumeOptionsView: View {
    @FocusState private var userValueIsFocused: Bool
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    @State private var input = ""
    let userUnits = ["Milliliters", "Liters", "Cups", "Pints", "Gallons"]
    enum Unit: String, CaseIterable {
        case milliliters 
        case liters
        case cups
        case pints
        case gallons
        
        var unitVolume: UnitVolume {
            switch self {
            case .milliliters: return UnitVolume.milliliters
            case .liters: return UnitVolume.liters
            case .gallons: return UnitVolume.gallons
            case .cups: return UnitVolume.cups
            case .pints: return UnitVolume.pints
            }
        }
    }
    
    let volumeUnits = Unit
        .allCases
        .compactMap { $0.rawValue }
    
    var output: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Unit(rawValue: volumeUnits[self.outputUnit]) else {
            return 0
        }
        guard let outputUnit = Unit(rawValue: volumeUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitVolume)
            .converted(to: outputUnit.unitVolume)
            .value
    }
    
    var body: some View {
        Form {
            Section {
                Picker("What is your input?", selection: $inputUnit) {
                    ForEach(0..<volumeUnits.count, id: \.self) {
                        Text(self.volumeUnits[$0])
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
                    ForEach(0..<volumeUnits.count, id: \.self) {
                        Text(self.volumeUnits[$0])
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
        .navigationTitle("Volume")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VolumeOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        VolumeOptionsView()
    }
}
