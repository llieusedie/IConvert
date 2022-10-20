//
//  IconView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 13.10.2022.
//

import SwiftUI

struct IconView: View {
    var name: String
    var image: String
    @State var show = false
    var body: some View {
        VStack {
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(Color("darkMode-Details"))
                .padding(5)
                .padding(.top, 10)
                .opacity(show ? 1 : 0)
                .animation(Animation.easeInOut(duration: 0.6).delay(0.2), value: show)
            
            Text(name)
                .font(.headline)
                .foregroundColor(Color("darkMode-Background"))
                .multilineTextAlignment(.center)
                .padding(10)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color("darkMode-Details"))
                .opacity(show ? 1 : 0)
                .animation(Animation.easeInOut(duration: 0.6).delay(0.4), value: show)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color("darkMode-Details"), lineWidth: 3)
        )
        .frame(width: 150)
        .onAppear {
            show = true
        }
    }
}



struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IconView(name: "Time", image: "clock")
            IconView(name: "Mass", image: "scalemass")
            IconView(name: "Area", image: "map")
        }
        
            .previewLayout(.fixed(width: 300, height: 300))
        
    }
}
