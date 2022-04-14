//
//  TemperatureOptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 12.04.2022.
//

import Foundation
import SwiftUI

struct TemperatureOptionsView: View {
    
    @FocusState private var userValueIsFocused: Bool
    @State private var userOption = 0.0
    @State private var userChoseInput = "Celsius"
    @State private var userChoseOutput = "Fahrenheit"
    let userUnits = ["Celsius", "Fahrenheit", "Kelvins"]
    
    var finalResult: Double {
        /*
         1. Convert input to celsius
         2. Convert celsius to chose output
         */
        let userNumber: Double = userOption
        
        var celsiusValue: Double {
            
            var lowComDenom = 0.0 //here lowComDenom is Celsius
            
            if userChoseInput == "Celsius" {
                
                lowComDenom = userNumber
                
            } else if userChoseInput == "Fahrenheit" {
                
                lowComDenom = (userNumber - 32) / 1.8 
                
            } else if userChoseInput == "Kelvins" {
                
                lowComDenom = userNumber - 273.15
                
            }
                return lowComDenom
        }
         
        var finalValue = 0.0
        
        if userChoseOutput == "Celsius" {
            
            finalValue = celsiusValue
            
        } else if userChoseOutput == "Fahrenheit" {
            
            finalValue = celsiusValue * 1.8 + 32
            
        } else if userChoseOutput == "Kelvins" {
            
            finalValue = celsiusValue + 273.15
    
        }
         return finalValue
    }
    
    var body: some View {
        Form {
            Section {
                Picker("What is your input?", selection: $userChoseInput) {
                    ForEach(userUnits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Choose your input")
            }
            .textCase(nil)
            
            Section {
                TextField("Your number", value: $userOption, format: .number)
                    .keyboardType(.decimalPad)
                    .focused($userValueIsFocused)
            }
            
            Section {
                Picker("What is your output?", selection: $userChoseOutput) {
                    ForEach(userUnits, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Choose your output")
            }
            .textCase(nil)
            
            Section {
                Text("\(finalResult, specifier: "%.2f") \(userChoseOutput)")
                    .font(.headline)
                    .textSelection(.enabled)
            }
        }
        .navigationTitle("IConvert: Temperature")
        .navigationBarTitleDisplayMode(.inline)

        
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    userValueIsFocused = false
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    TemperatureSettingsView()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}
