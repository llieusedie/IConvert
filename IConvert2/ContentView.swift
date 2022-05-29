//
//  ContentView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 11.04.2022.
//

import SwiftUI

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
            .preferredColorScheme(.light)
    }
}
