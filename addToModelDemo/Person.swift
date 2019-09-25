//
//  Person.swift
//  addToModelDemo
//
//  Created by Ashok on 24/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI
import Combine

struct Person: Identifiable {
    var id : UUID
    var name : String
    var itemCount:Int
    var price : Int
    var image : String
    var total : Int
}

final class PersonStore:ObservableObject{
    @Published var persons: [Person] = []
    
    @Published var total : Int = 0
    
    func fetch(){
        persons = [
            .init(id: .init(), name: "Chai", itemCount: 0,price:10,image:"demo",total:0),
            .init(id: .init(), name: "Cofee", itemCount: 0,price:20,image:"demo",total:0),
            .init(id: .init(), name: "Boost", itemCount: 0,price:25,image:"demo",total:0),
            .init(id: .init(), name: "Horlicks", itemCount: 0,price:25,image:"demo",total:0),
            .init(id: .init(), name: "Samusa", itemCount: 0,price:10,image:"demo",total:0),
            .init(id: .init(), name: "Paniyaram", itemCount: 0,price:15,image:"demo",total:0),
            .init(id: .init(), name: "Green Tea", itemCount: 0,price:15,image:"demo",total:0),
            .init(id: .init(), name: "Filter Cofee", itemCount: 0,price:25,image:"demo",total:0),
            .init(id: .init(), name: "Biscut", itemCount: 0,price:10,image:"demo",total:0),
            .init(id: .init(), name: "Milk", itemCount: 0,price:15,image:"demo",total:0),
            .init(id: .init(), name: "Corn", itemCount: 0,price:25,image:"demo",total:0),
            .init(id: .init(), name: "Lemon Tea", itemCount: 0,price:15,image:"demo",total:0),
        ]
    }
}

//struct PersonsView:View {
//    @ObservedObject var store: PersonStore
//    var body: some View{
//        NavigationView{
//            List(store.persons){ person in
//                VStack(alignment:.leading){
//                    Text(person.name)
//                        .font(.headline)
//                    Text("Age: \(person.age)")
//                        .font(.subheadline)
//                        .foregroundColor(.secondary)
//                }
//            }
//            }
//            .navigationBarTitle("Persons")
//        .onAppear {
//            self.store.fetch()
//        }
//        
//    }
//}



//struct PersonsView_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonsView()
//    }
//}
