//
//  ContentView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 11.04.2022.
//

import SwiftUI

struct RulerButton: View {
    
    var body: some View {
        Button(action: {})
        {
            NavigationLink(destination: RulerOptionsView(), label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .padding()
                    
                    Image(systemName: "ruler")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140, alignment: .center)
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.black)
                        .fixedSize()
                        
                }
            })
        }
    }
}
struct TemperatureButton: View {
    
    var body: some View {
        Button(action: {})
        {
            NavigationLink(destination: TemperatureOptionsView(), label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .padding()
                    
                    Image(systemName: "thermometer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140, alignment: .center)
                        .foregroundColor(.black)
                }
            })
        }
    }
}
struct ClockButton: View {
    
    var body: some View {
        Button(action: {})
        {
            NavigationLink(destination: ClockOptionsView(), label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .padding()
                    
                    Image(systemName: "clock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140, alignment: .center)
                        .foregroundColor(.black)
                }
            })
        }
    }
}
struct DropButton: View {
    
    var body: some View {
        Button(action: {})
        {
            NavigationLink(destination: DropOptionsView(), label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .padding()
                    
                    Image(systemName: "drop")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140, alignment: .center)
                        .foregroundColor(.black)
                }
            })
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    RulerButton()
                    TemperatureButton()
                }
                HStack {
                    ClockButton()
                    DropButton()
                }
                Spacer()
                    .navigationTitle("IConvert")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
