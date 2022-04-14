//
//  DropOptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 12.04.2022.
//
/*
 -milliliters
 -liters
 -cups
 -pints
 -gallons
 */

import Foundation
import SwiftUI

struct DropOptionsView: View {
    
    @FocusState private var userValueIsFocused: Bool
    @State private var userOption = 0.0
    @State private var userChoseInput = "Milliliters"
    @State private var userChoseOutput = "Liters"
    let userUnits = ["Milliliters", "Liters", "Cups", "Pints", "Gallons"]
    
    var finalResult: Double {
        
        let userNumber: Double = userOption
        
        var millilitersValue: Double {
            
            var lowComDenom = 0.0 //here lowComDenom is milliliter
            
            if userChoseInput == "Milliliters" {
                
                lowComDenom = userNumber
                
            } else if userChoseInput == "Liters" {
                
                lowComDenom = userNumber * 1000
                
            } else if userChoseInput == "Cups" {
                
                lowComDenom = userNumber * 236.6
                
            } else if userChoseInput == "Pints" {
                
                lowComDenom = userNumber * 473
                
            } else if userChoseInput == "Gallons"{
                
                lowComDenom = userNumber * 3785
                
            }
            return lowComDenom
        }
        
        var finalValue = 0.0
        
        if userChoseOutput == "Milliliters" {
            
            finalValue = millilitersValue
            
        } else if userChoseOutput == "Liters" {
            
            finalValue = millilitersValue / 1000
            
        } else if userChoseOutput == "Cups" {
            
            finalValue = millilitersValue / 236.6
            
        } else if userChoseOutput == "Pints" {
            
            finalValue = millilitersValue / 473
            
        } else if userChoseOutput == "Gallons" {
            
            finalValue = millilitersValue / 3785
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
                if finalResult > 1 {
                    Text("\(finalResult, specifier: "%.2f") \(userChoseOutput)")
                    
                } else if finalResult < 1 {
                    Text("\(finalResult, specifier: "%.5f") \(userChoseOutput)")
                    
                } else {
                    Text("\(finalResult, specifier: "%.2f") \(userChoseOutput)")
                }
            }
            .font(.headline)
            .textSelection(.enabled)
        }
        .navigationTitle("IConvert: Liquids")
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
                    DropSettingsView()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
        
    }
}

