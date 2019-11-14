//
//  HomeView.swift
//  addToModelDemo
//
//  Created by rabeeh on 14/11/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: AddItem.getAllToDoItem()) var addItems:FetchedResults<AddItem>
    
    @State private var newToDoTitle = ""
    @State private var newToDoDescription = ""
    var store = PersonStore()
    var total = {(store:PersonStore) -> Int in
        var amount = store.persons.filter({$0.itemCount > 0})
        var totalAmount = Int()
        for i in amount{
            totalAmount = totalAmount + (i.price * i.itemCount)
        }
        return totalAmount
    }
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Add New")){
//                    Button(action:{
//                        NavigationLink("Add New", destination: ListView(store: self.store))
//                    }){
//                        Image(systemName: "plus.circle.fill")
//                        .foregroundColor(.green)
//                        .imageScale(.large)
//                    }
                    NavigationLink(destination: ListView(store: store)) { Text("Add") }
                    .foregroundColor(.green)
                    .imageScale(.large)
                }
            }
            .navigationBarTitle(Text("Its Chai Time"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
