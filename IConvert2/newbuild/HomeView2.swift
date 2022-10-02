////
////  HomeView2.swift
////  IConvert2
////
////  Created by Paul Kirnoz on 26.09.2022.
////
//
//import SwiftUI
//
//struct HomeView2: View {
//    @ObservedObject var viewModel: ViewModel
//    let columns =  [
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//    let sections = ["ruler", "thermometer", "clock", "drop"]
//    var lengths: Length
//    var temp: Temperature
//    var time: Time
//    var liquids: Liquid
//
//
//    var body: some View {
//        VStack {
//            ScrollView(.vertical, showsIndicators: false) {
//                LazyVGrid(columns: columns, spacing: 50) {
//                    ForEach(sections, id: \.self) { section in
//                        NavigationLink {
//                            OptionsView(lengths: lengths)
//                        } label: {
//                            viewModel.CreateSectionFor(picture: section)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct HomeView2_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView2(viewModel: ViewModel(), lengths: Length(meters: 0, kilometers: 0, feets: 0, yards: 0))
//    }
//}
