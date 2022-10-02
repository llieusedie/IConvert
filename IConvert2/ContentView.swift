//
//  ContentView.swift
//  IConvert2
//
//  Created by Paul Kirnoz on 11.04.2022.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        HStack {
                            RulerButton()
                                .opacity(show ? 1 : 0)
                                .animation(Animation.easeInOut(duration: 0.6).delay(0.2), value: show)
                            TemperatureButton()
                                .opacity(show ? 1 : 0)
                                .animation(Animation.easeInOut(duration: 0.6).delay(0.4), value: show)
                        }
                        HStack {
                            ClockButton()
                                .opacity(show ? 1 : 0)
                                .animation(Animation.easeInOut(duration: 0.6).delay(0.6), value: show)
                            DropButton()
                                .opacity(show ? 1 : 0)
                                .animation(Animation.easeInOut(duration: 0.6).delay(0.8), value: show)
                        }
                        HStack {
                            InformationStorageButton()
                                .opacity(show ? 1 : 0)
                                .animation(Animation.easeInOut(duration: 0.6).delay(1), value: show)
                            SpeedButton()
                                .opacity(show ? 1 : 0)
                                .animation(Animation.easeInOut(duration: 0.6).delay(1.2), value: show)
                        }
                        Button("test button") {
                            show.toggle()
                        }
                    }
                    Spacer()
                }
                .navigationTitle("IConvert")
            }
        }
        .onAppear {
            show = true
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
