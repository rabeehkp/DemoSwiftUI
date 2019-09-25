//
//  ContentView.swift
//  addToModelDemo
//
//  Created by Ashok on 24/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var store = PersonStore()
    @State var numberOfItems = 0
    var body: some View {
//        Text("Hello World")
//        VStack{
//            List{
//                Stepper(value: $numberOfItems, in: 0...100) {
//                    Text("Age: \(numberOfItems)")
//                }
                PersonsView(store: store)
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
