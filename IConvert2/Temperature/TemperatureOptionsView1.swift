//
//  TemperatureOptionsView1.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 01.10.2022.
//

import SwiftUI

struct TemperatureOptionsView: View {
    
    @FocusState private var userValueIsFocused: Bool
    @State private var inputUnit = 0 
    @State private var outputUnit = 0
    @State private var input = ""
    
    
    enum Unit: String, CaseIterable {
        case celsius = "Celsius"
        case fahrenheit = "Fahrenheit"
        case kelvin = "Kelvin"
        
        var unitTemperature: UnitTemperature {
            switch self {
            case .celsius: return UnitTemperature.celsius
            case .fahrenheit: return UnitTemperature.fahrenheit
            case .kelvin: return UnitTemperature.kelvin
            }
        }
    }
    
    let temperatureUnits = Unit 
        .allCases
        .compactMap { $0.rawValue }
    
    var output: Double {
        
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Unit(rawValue: temperatureUnits[self.inputUnit]) else {
            return 0
        } 
        
        guard let outputUnit = Unit(rawValue: temperatureUnits[self.outputUnit]) else {
            return 0
        }
        
        return Measurement(value: input, unit: inputUnit.unitTemperature)
            .converted(to: outputUnit.unitTemperature)
            .value
    }
    
    var body: some View {
        Form {
            Section {
                Picker("What's your input?", selection: $inputUnit) {
                    ForEach(0..<temperatureUnits.count, id: \.self) {
                        Text(self.temperatureUnits[$0])
                    }
                }
                .pickerStyle(.segmented)
            }header: {
                Text("Choose your input")
                    .textCase(nil)
            }
            
            Section {
                TextField("Enter your measurement", text: $input) 
                    .keyboardType(.decimalPad)
                    .focused($userValueIsFocused)
            }
            
            Section {
                Picker("What is your output?", selection: $outputUnit) {
                    ForEach(0..<temperatureUnits.count, id: \.self) {
                        Text(self.temperatureUnits[$0])
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
        .navigationTitle("Temperature")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct TemperatureOptionsView1_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureOptionsView()
    }
}
