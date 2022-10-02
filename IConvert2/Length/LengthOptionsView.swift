//
//  RulerOptionsVIew.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 12.04.2022.
//

import Foundation
import SwiftUI

struct LengthOptionsView: View {
    
    @FocusState private var userValueIsFocused: Bool
    
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    @State private var input = ""
    
    enum Unit: String, CaseIterable {
        case mts
        case km = "Km"
        case ft = "Ft"
        case yards
        case miles
        
        var unitLength: UnitLength {
            switch self {
            case .mts: return UnitLength.meters
            case .km: return UnitLength.kilometers
            case .ft: return UnitLength.feet
            case .yards: return UnitLength.yards
            case .miles: return UnitLength.miles
            }
        }
    }
    let lengthUnits = Unit
        .allCases
        .compactMap { $0.rawValue }
    
    var output: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        
        guard let inputUnit = Unit(rawValue: lengthUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Unit(rawValue: lengthUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitLength)
            .converted(to: outputUnit.unitLength)
            .value
    }
    
    var body: some View {
        Form {
            //MARK: - Input options
            Section {
                Picker("What is your input?", selection: $inputUnit) {
                    ForEach(0..<lengthUnits.count, id: \.self) {
                        Text(self.lengthUnits[$0])
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
                    ForEach(0..<lengthUnits.count, id: \.self) {
                        Text(self.lengthUnits[$0])
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
            } 
            .navigationTitle("Length")
            .navigationBarTitleDisplayMode(.inline) 
        }
    }
}
struct LengthOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        LengthOptionsView()
    }
}
