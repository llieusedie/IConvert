//
//  ClockOptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 12.04.2022.
//
/*
 - seconds
 - minutes
 - hours
 - days
 - months
 */
import Foundation
import SwiftUI


struct ClockOptionsView: View {
    
    @FocusState private var userValueIsFocused: Bool
    @State private var userOption = 0.0
    @State private var userChoseInput = "Minutes"
    @State private var userChoseOutput = "Hours"
    let userUnits = ["Seconds", "Minutes", "Hours", "Days", "Months"]
    
    var finalResult: Double {
        
        let userNumber: Double = userOption
        
        var secondsValue: Double {
            
            var lowComDenom = 0.0 //here lowComDenom is seconds
            
            if userChoseInput == "Seconds" {
                
                lowComDenom = userNumber
                
            } else if userChoseInput == "Minutes" {
                
                lowComDenom = userNumber * 60
                
            } else if userChoseInput == "Hours" {
                
                lowComDenom = userNumber * 3600
                
            } else if userChoseInput == "Days" {
                
                lowComDenom = userNumber * 86400
                
            } else if userChoseInput == "Months" {
                
                lowComDenom = userNumber * 2629746
                
            }
            return lowComDenom
        }
        
        var finalValue = 0.0
        
        if userChoseOutput == "Seconds" {
            
            finalValue = secondsValue
            
        } else if userChoseOutput == "Minutes" {
            
            finalValue = secondsValue / 60
            
        } else if userChoseOutput == "Hours" {
            
            finalValue = secondsValue / 3600
            
        } else if userChoseOutput == "Days" {
            
            finalValue = secondsValue / 86400
            
        } else if userChoseOutput == "Months" {
            
            finalValue = secondsValue / 2629746
        }
        return finalValue
    }
    
    var body: some View {
        Form {
            Section {
                Picker("What is your input?", selection:  $userChoseInput) {
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
                    Text("\(finalResult, specifier: "%.1f") \(userChoseOutput)")
                    
                } else if finalResult < 1 {
                    Text("\(finalResult, specifier: "%.5f") \(userChoseOutput)")
                }
            }
        }
        .font(.headline)
        .textSelection(.enabled)
        .navigationTitle("IConvert: Time")
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
                    ClockSettingsView()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}


