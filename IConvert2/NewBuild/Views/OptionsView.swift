//
//  OptionsView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 15.10.2022.
//

import SwiftUI

struct OptionsView: View {
    var options: IconsModel
    var category = "Speed"
    @ObservedObject var vm = ViewModel()
    @FocusState private var userValueIsFocused: Bool
    
    var body: some View {
        VStack {
            //MARK: Provides options based on Category name
            switch category {
            case _ where options.name == "Length":
                createOptionsView(units: vm.lengthUnits, output: vm.lengthOutput)
            case _ where options.name == "Temperature":
                createOptionsView(units: vm.temperatureUnits, output: vm.temperatureOutput)
            case _ where options.name == "Storage":
                createOptionsView(units: vm.storageUnits, output: vm.storageOutput)
            case _ where options.name == "Time":
                createOptionsView(units: vm.timeUnits, output: vm.timeOutput)
            case _ where options.name == "Volume":
                createOptionsView(units: vm.volumeUnits, output: vm.volumeOutput)
            case _ where options.name == "Speed":
                createOptionsView(units: vm.speedUnits, output: vm.speedOutput)
            case _ where options.name == "Mass":
                createOptionsView(units: vm.massUnits, output: vm.massOutput)
            case _ where options.name == "Area":
                createOptionsView(units: vm.areaUnits, output: vm.areaOutput)
            default:
                Home()
            }
        }
        .navigationTitle(options.name)
    }    
    func createOptionsView(units: [String], output: Double) -> some View {
        Form {
            Section {
                Picker("What is your input?", selection: $vm.inputUnit) {
                    ForEach(0..<units.count, id: \.self) {
                        Text(units[$0])
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Choose your input")
                    .textCase(nil)
            }
            Section {
                TextField("Enter your measurement", text: $vm.input)
                    .keyboardType(.decimalPad)
                    .focused($userValueIsFocused)
            }
            Section {
                Picker("What is your output?", selection: $vm.outputUnit) {
                    ForEach(0..<units.count, id: \.self) {
                        Text(units[$0])
                    }
                }
                .pickerStyle(.segmented)
            } header: {
                Text("Choose your output")
                    .textCase(nil)
            }
            
            Section {
                HStack {
                    Text("\(output, specifier: "%.2f")")
                        .textSelection(.enabled)
                    Spacer()
                }
            } header: {
                Text("Result")
                    .textCase(nil)      
            }
        }
    }
}


struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView(options: IconsModel(name: "Time", image: "clock"))
    }
}
