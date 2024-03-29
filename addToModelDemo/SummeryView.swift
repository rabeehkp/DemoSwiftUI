//
//  SummeryView.swift
//  addToModelDemo
//
//  Created by rabeeh on 26/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI

struct SummeryView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: AddItem.getAllToDoItem()) var toDoItems:FetchedResults<AddItem>
    
    @State private var list = Data()
    
    @ObservedObject var store: PersonStore
    var total = Int()
    var updatedLists = {(store:PersonStore) -> [Person] in
        let lists = store.persons.filter({$0.itemCount > 0})
        return lists
    }
    var body: some View {
        VStack{
            if updatedLists(store).count > 0{
                List(updatedLists(store)){ item in
                    
                    Image(uiImage: UIImage(named: item.image)!)
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .leading)
                    VStack{
                        Text(item.name)
                            .font(.headline)
                            .foregroundColor(.green)
                        Text("item Count : \(item.itemCount)")
                            .foregroundColor(.red)
                        Text(item.desc)
                        HStack{
                            Text("price : \(item.price)")
                                .foregroundColor(.secondary)
                            Text("total : \(item.price * item.itemCount)")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                Text("Grand Total : \(self.total)")
                    .font(.headline)
                    .foregroundColor(.red)
                    .frame(height:30)
                
                Button(action: {
                    let addItem = AddItem(context: self.managedObjectContext)
                    
//                    let jsonData = try JSONSerialization.data(withJSONObject: store, options: .prettyPrinted)
//
//                    let decoded = try JSONSerialization.jsonObject(with: jsonData, options: [])
                    
                    
//                    addItem.list = jsonData
                    addItem.createdAt = Date()
                    
                    do{
                        try self.managedObjectContext.save()
                    }catch{
                        print(error)
                    }
                    
                    
                }){
                    Text("Save")
                }
            }else{
                Text("Its Empty")
            }
            
        }
    }
}

//struct SummeryView_Previews: PreviewProvider {
//    static var previews: some View {
//        SummeryView()
//    }
//}
