////
////  OptionsView.swift
////  IConvert2
////
////  Created by Paul Kirnoz on 27.09.2022.
////
//
//import SwiftUI
//
//struct OptionsView: View {
//    @FocusState private var userValueIsFocused: Bool //Checks if user tap textField to show/hide keyboard
//    @State private var userOption = 0.0
//    @State private var userChoseInput = "Meters"
//    @State private var userChoseOutput = "Yards"
//    let userUnits: [String]
//    var lengths: Length
//
//    var body: some View {
//        Form {
//            Section {
//                Picker("What is your input?", selection: $userChoseInput) {
//                    ForEach(lengths, id: \.self) {
//                        Text($0)
//                    }
//                }
//                .pickerStyle(.segmented)
//            } header: {
//                Text("Choose your input")
//            }
//            .textCase(nil)
//
//
//            Section {
//                TextField("Your number", value: $userOption, format: .number)
//                    .keyboardType(.decimalPad)
//                    .focused($userValueIsFocused)
//            }
//            Section {
//                Picker("What is your output?", selection: $userChoseOutput) {
//                    ForEach(userUnits, id: \.self) {
//                        Text($0)
//                    }
//                }
//                .pickerStyle(.segmented)
//            } header: {
//                Text("Choose your output")
//            }
//            .textCase(nil)
//
//            Section {
//                //final result comes here
//            }
//            .font(.headline)
//            .textSelection(.enabled)
//
//        }
//        .navigationTitle("IConvert: Lengths")
//
//    }
//}
//
//struct OptionsView_Previews: PreviewProvider {
//    static var previews: some View {
//        OptionsView(userUnits: <#T##[String]#>, lengths: <#T##Length#>)
//    }
//}
