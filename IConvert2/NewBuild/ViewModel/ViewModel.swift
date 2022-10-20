//
//  ViewModel.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 15.10.2022.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var categories = [
        IconsModel(name: "Length", image: "ruler"),
        IconsModel(name: "Temperature", image: "thermometer"),
        IconsModel(name: "Storage", image: "cpu"),
        IconsModel(name: "Time", image: "clock"),
        IconsModel(name: "Volume", image: "drop"),
        IconsModel(name: "Speed", image: "speedometer"),
        IconsModel(name: "Mass", image: "scalemass"),
        IconsModel(name: "Area", image: "map")
    ]
    
    @Published var inputUnit = 0
    @Published var outputUnit = 0
    @Published var input = ""
    
    //MARK: - Temperature Logic
    
    enum Temperature: String, CaseIterable {
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
    let temperatureUnits = Temperature
        .allCases
        .compactMap { $0.rawValue }
    
    var temperatureOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        } 
        guard let inputUnit = Temperature(rawValue: temperatureUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Temperature(rawValue: temperatureUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitTemperature)
            .converted(to: outputUnit.unitTemperature)
            .value
    }
    
    //MARK: - Speed Logic
    
    enum Speed: String, CaseIterable {
        case kilometersPerHour = "Km/h"
        case milesPerHour = "Mph"
        case metersPerSecond = "Mps"
        case knots = "Knots"
        
        var unitSpeed: UnitSpeed {
            switch self {
            case .metersPerSecond: return UnitSpeed.metersPerSecond
            case .milesPerHour: return UnitSpeed.milesPerHour
            case .kilometersPerHour: return UnitSpeed.kilometersPerHour
            case .knots: return UnitSpeed.knots
            }
        }
    }
    let speedUnits = Speed
        .allCases
        .compactMap { $0.rawValue }
    
    var speedOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        } 
        guard let inputUnit = Speed(rawValue: speedUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Speed(rawValue: speedUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitSpeed)
            .converted(to: outputUnit.unitSpeed)
            .value
    }
    
    //MARK: - Storage Logic
    
    enum Storage: String, CaseIterable {
        case bites = "b" 
        case kilobytes = "kB"
        case megabytes = "Mb"
        case gigabytes = "Gb"
        case terabytes = "Tb"
        
        var unitStorage: UnitInformationStorage {
            switch self {
            case .bites: return UnitInformationStorage.bytes
            case .kilobytes: return UnitInformationStorage.kilobytes
            case .megabytes: return UnitInformationStorage.megabytes
            case .gigabytes: return UnitInformationStorage.gigabytes
            case .terabytes: return UnitInformationStorage.terabytes
            }
        }
    }
    let storageUnits = Storage
        .allCases
        .compactMap { $0.rawValue } 
    
    var storageOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Storage(rawValue: storageUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Storage(rawValue: storageUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitStorage)
            .converted(to: outputUnit.unitStorage)
            .value
    }
    
    //MARK: - Length Logic
    
    enum Length: String, CaseIterable {
        case m = "Meters"
        case km = "Km"
        case ft = "Feet"
        case yards = "Yards"
        case miles = "Miles"

        var unitLength: UnitLength {
            switch self {
            case .m: return UnitLength.meters
            case .km: return UnitLength.kilometers
            case .ft: return UnitLength.feet
            case .yards: return UnitLength.yards
            case .miles: return UnitLength.miles
            }
        }
    }
    let lengthUnits = Length
        .allCases
        .compactMap { $0.rawValue }
    
    var lengthOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Length(rawValue: lengthUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Length(rawValue: lengthUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitLength)
            .converted(to: outputUnit.unitLength)
            .value
    }
    
    //MARK: - Time Logic
    
    enum Time: String, CaseIterable {
        case milliseconds = "Ms"
        case seconds = "Seconds"
        case minutes = "Minutes"
        case hours = "Hours"
        
        var unitDuration: UnitDuration {
            switch self {
            case .milliseconds: return UnitDuration.milliseconds
            case .seconds: return UnitDuration.seconds
            case .minutes: return UnitDuration.minutes
            case .hours: return UnitDuration.hours
            }
        }
    }
    let timeUnits = Time 
        .allCases
        .compactMap { $0.rawValue }
    
    var timeOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Time(rawValue: timeUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Time(rawValue: timeUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitDuration)
            .converted(to: outputUnit.unitDuration)
            .value
    }
    
    //MARK: - Volume Logic
    enum Volume: String, CaseIterable {
        case milliliters = "Ml"
        case liters = "Liters"
        case cups = "Cups"
        case pints = "Pints"
        case gallons = "Gallons"
        
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
    
    let volumeUnits = Volume
        .allCases
        .compactMap { $0.rawValue }
    
    var volumeOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Volume(rawValue: volumeUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Volume(rawValue: volumeUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitVolume)
            .converted(to: outputUnit.unitVolume)
            .value
    }
    
    //MARK: - Mass logic
    
    enum Mass: String, CaseIterable {
        case grams = "Grams"
        case kilograms = "Kilograms"
        case ounces = "Ounces"
        case pounds = "Pounds"
        
        var unitMass: UnitMass {
            switch self {
            case .grams: return UnitMass.grams
            case .kilograms: return UnitMass.kilograms
            case .ounces: return UnitMass.ounces
            case .pounds: return UnitMass.pounds
            }
        }
    }
    
    let massUnits = Mass
        .allCases
        .compactMap { $0.rawValue }
    
    var massOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Mass(rawValue: massUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Mass(rawValue: massUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitMass)
            .converted(to: outputUnit.unitMass)
            .value
    }
    
    
    //MARK: - Area Logic
    
    enum Area: String, CaseIterable {
        case acres = "Acres"
        case hectares = "Hectares"
        case squareKilometers = "Km²"
        case squareMiles = "Mi²"
        
        var unitArea: UnitArea {
            switch self {
            case .acres: return UnitArea.acres
            case .hectares: return UnitArea.hectares
            case .squareKilometers: return UnitArea.squareKilometers
            case .squareMiles: return UnitArea.squareMiles
            }
        }
    }
    
    let areaUnits = Area
        .allCases
        .compactMap { $0.rawValue }
    
    var areaOutput: Double {
        guard let input = Double(self.input) else {
            return 0
        }
        guard let inputUnit = Area(rawValue: areaUnits[self.inputUnit]) else {
            return 0
        }
        guard let outputUnit = Area(rawValue: areaUnits[self.outputUnit]) else {
            return 0
        }
        return Measurement(value: input, unit: inputUnit.unitArea)
            .converted(to: outputUnit.unitArea)
            .value
    }
}
