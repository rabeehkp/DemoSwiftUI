//
//  ContentView.swift
//  addToModelDemo
//
//  Created by Ashok on 24/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    @Environment(\.managedObjectContext) var managedObjectContext
//    var list : [AddList]
    var store = PersonStore()
    @State var numberOfItems = 0
    var body: some View {
//        Text("Hello World")
//        VStack{
//            List{
//                ForEach(list.indexed(),id: \.1.id){ listItem , index in
////                    Text(listItem)
//                }
//            }

                PersonsView(store: store)
//        }
//        .onAppear(perform: list = AddList(context: self.managedObjectContext).fetchList() as! [AddList])
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
