//
//  SpeedButton.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 01.10.2022.
//

import SwiftUI

struct SpeedButton: View {
    var body: some View {
        NavigationLink(destination: SpeedOptionsView(), label: {
            Image(systemName: "speedometer")
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

struct SpeedButton_Previews: PreviewProvider {
    static var previews: some View {
        SpeedButton()
    }
}
