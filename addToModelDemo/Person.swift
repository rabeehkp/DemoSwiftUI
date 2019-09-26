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
    var catagory : String
    var desc : String
}

final class PersonStore:ObservableObject{
    @Published var persons: [Person] = []
    
    @Published var total : Int = 0
    
    func fetch(){
        persons = [
            .init(id: .init(), name: "Tea", itemCount: 0,price:28,image:"Chai",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Filter Cofee", itemCount: 0,price:28,image:"Filtercoffee",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Black Cofee", itemCount: 0,price:28,image:"Coffee",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Black Tea", itemCount: 0,price:28,image:"Chai",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Milk", itemCount: 0,price:28,image:"Milk",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Boost", itemCount: 0,price:33,image:"Boost",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Horlicks", itemCount: 0,price:33,image:"Horlicks",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Green Tea", itemCount: 0,price:28,image:"Greentea",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Lemon Tea", itemCount: 0,price:28,image:"LemonTea",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Ginger Tea", itemCount: 0,price:28,image:"demo",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Badam Milk", itemCount: 0,price:30,image:"Milk",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Butter Milk", itemCount: 0,price:30,image:"Milk",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Nannari Surbath", itemCount: 0,price:30,image:"demo",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Tea Cake", itemCount: 0,price:15,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Carrot Cake", itemCount: 0,price:35,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Banana Walnut Cake", itemCount: 0,price:35,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Brownie", itemCount: 0,price:50,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Cookies", itemCount: 0,price:12,image:"demo",total:0,catagory:"drinks",desc:""),
            .init(id: .init(), name: "Sweet Corn", itemCount: 0,price:35,image:"Corn",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Verkadalai", itemCount: 0,price:30,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Sundal", itemCount: 0,price:30,image:"Paniyaram",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Mini Samusa", itemCount: 0,price:5,image:"Samusa",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Alu Samusa", itemCount: 0,price:25,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Veg Cutlets", itemCount: 0,price:25,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Veg Roll", itemCount: 0,price:25,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Veg Puff", itemCount: 0,price:25,image:"demo",total:0,catagory:"snacks",desc:""),
            .init(id: .init(), name: "Paniyaram", itemCount: 0,price:33,image:"Paniyaram",total:0,catagory:"snacks",desc:""),
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
