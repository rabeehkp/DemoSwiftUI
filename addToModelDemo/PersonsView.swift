//
//  PersonsView.swift
//  addToModelDemo
//
//  Created by Ashok on 24/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI

struct PersonsView : View {
    @ObservedObject var store: PersonStore
    @Environment(\.managedObjectContext) var managedObjectContext
//    var total = {(store:PersonStore) -> Int in
//        var totalAmount = Int()
//        ForEach(store.persons) { person in
//            let Amount = person.price
//        totalAmount = Amount
//        }
//        return totalAmount
//    }
    var body: some View {
        NavigationView {
            VStack{
                List {
                    ForEach(store.persons.indexed(), id: \.1.id) { index, person in
                        NavigationLink(destination: EditingView(person: self.$store.persons[index])) {
                            Image(uiImage: UIImage(named: person.image)!)
                                .resizable()
                                .frame(width: 100, height: 100, alignment: .leading)
                            VStack(alignment: .leading) {
                                VStack(alignment: .leading){
                                    Text(person.name)
                                        .font(.headline)
                                    Text("Total Amount : \(person.itemCount * person.price)")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
//                                }
//                                HStack{
                                    Text("Price: Rs \(person.price)")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    Text("Total Count: \(person.itemCount)")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                    }
                    .frame(height: 100, alignment: .leading)
                }
                
                Text("Grand Total : 0 ")
            }
            .onAppear(perform: store.fetch)
            .navigationBarTitle(Text("Good Evening"))
        }
        //.onAppear(perform: store.fetch)
    }
}

struct IndexedCollection<Base: RandomAccessCollection>: RandomAccessCollection {
    typealias Index = Base.Index
    typealias Element = (index: Index, element: Base.Element)
    
    let base: Base
    
    var startIndex: Index { base.startIndex }
    
    var endIndex: Index { base.endIndex }
    
    func index(after i: Index) -> Index {
        base.index(after: i)
    }
    
    func index(before i: Index) -> Index {
        base.index(before: i)
    }
    
    func index(_ i: Index, offsetBy distance: Int) -> Index {
        base.index(i, offsetBy: distance)
    }
    
    subscript(position: Index) -> Element {
        (index: position, element: base[position])
    }
}

extension RandomAccessCollection{
    func indexed() -> IndexedCollection<Self> {
        IndexedCollection(base: self)
    }
}

//struct PersonsView_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonsView()
//    }
//}
