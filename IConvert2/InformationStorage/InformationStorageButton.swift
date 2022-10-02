//
//  InformationStorageButton.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 01.10.2022.
//

import SwiftUI

struct InformationStorageButton: View {
    var body: some View {
        NavigationLink(destination: InformationStorageOptionsView(), label: {
            Image(systemName: "cpu")
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

struct InformationStorageButton_Previews: PreviewProvider {
    static var previews: some View {
        InformationStorageButton()
    }
}
