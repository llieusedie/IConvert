//
//  RulerButton.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 27.04.2022.
//

import Foundation
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
