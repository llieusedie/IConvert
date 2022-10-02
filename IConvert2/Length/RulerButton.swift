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
            NavigationLink(destination: LengthOptionsView(), label: {
                Image(systemName: "ruler")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120, alignment: .center)
                    .foregroundStyle(Color("darkMode-Details"))
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color("strong"))
                            .shadow(color: .gray, radius: 10)
                            .padding()
                        )
                    .padding(30)
                    
            })
        }
    }


struct RulerButton_Previews: PreviewProvider {
    static var previews: some View {
        RulerButton()
    }
}
