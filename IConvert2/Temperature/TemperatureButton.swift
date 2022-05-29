//
//  TemperatureButton.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 27.04.2022.
//

import Foundation
import SwiftUI
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
