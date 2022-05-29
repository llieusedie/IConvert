//
//  RulerOptionsVIew.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 12.04.2022.
//

import Foundation
import SwiftUI

struct RulerOptionsView: View{
    
    @FocusState private var userValueIsFocused: Bool //Checks if user tap textField to show/hide keyboard
    @State private var userOption = 0.0             // User wrote number
    @State private var userChoseInput = "Meters"    //Chosen input
    @State private var userChoseOutput = "Yards"    //Chosen output
    let userUnits = ["Meters", "Kilometers", "Feets", "Yards"]
    
    var finalResult: Double {
        
        let userNumber: Double = userOption //sets userNumber equal to userOption(textField)
        var mmValue: Double {
            
            var lowComDenom = 0.0
            
            if userChoseInput == "Meters" {
                
                lowComDenom = userNumber * 1000 //to convert meters to mm: multiply them by 1000
                
            } else if userChoseInput == "Kilometers" {
                
                lowComDenom = userNumber * 1000000 //to convert m to mm: multiply them by 1000000
                
            } else if userChoseInput == "Feets" {
                
                lowComDenom = userNumber * 304.80 //to convert ft to mm: multiply them by 304.80
                
            } else if userChoseInput == "Yards" {
                
                lowComDenom = userNumber * 914.4 //to convert yd to mm: multiply them by 914.4
                
            }
            return lowComDenom
        }
        
        var finalValue = 0.0
        
        if userChoseOutput == "Meters" {
            
            finalValue = mmValue / 1000
            
        } else if userChoseOutput == "Kilometers" {
            
            finalValue = mmValue / 1_000_000
            
        } else if userChoseOutput == "Feets" {
            
            finalValue = mmValue / 304.80
            
        } else if userChoseOutput == "Yards" {
            
            finalValue = mmValue / 914.4
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
        .navigationTitle("IConvert: Lengths")
        
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
                    RulerSettingsView()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}
