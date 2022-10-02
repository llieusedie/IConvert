//
//  InformationStorageOptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 01.10.2022.
//

import SwiftUI

struct InformationStorageOptionsView: View {
    
    @FocusState private var userValueIsFocused: Bool
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    @State private var input = ""
    
    enum Unit: String, CaseIterable {
        case bites = "B" 
        case kilobytes = "KB"
        case megabytes = "MG"
        case gigabytes = "GB"
        case terabytes = "TB"
        
        var unitIS: UnitInformationStorage {
            switch self {
            case .bites: return UnitInformationStorage.bytes
            case .kilobytes: return UnitInformationStorage.kilobytes
            case .megabytes: return UnitInformationStorage.megabytes
            case .gigabytes: return UnitInformationStorage.gigabytes
            case .terabytes: return UnitInformationStorage.terabytes
            }
        }
    }
     let ISUnits = Unit
        .allCases
        .compactMap { $0.rawValue } 
    
    var output: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Unit(rawValue: ISUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Unit(rawValue: ISUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitIS)
            .converted(to: outputUnit.unitIS)
            .value
    }
    
    var body: some View {
        Form {
            Section {
                Picker("What is your input?", selection: $inputUnit) {
                    ForEach(0..<ISUnits.count, id: \.self) {
                        Text(self.ISUnits[$0])
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
                    ForEach(0..<ISUnits.count, id: \.self) {
                        Text(self.ISUnits[$0])
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
            
            .navigationTitle("Information Storage")
            .navigationBarTitleDisplayMode(.inline)   
        }
    }
}

struct InformationStorageOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        InformationStorageOptionsView()
    }
}
