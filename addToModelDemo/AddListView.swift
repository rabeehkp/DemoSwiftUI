//
//  AddListView.swift
//  addToModelDemo
//
//  Created by rabeeh on 25/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import SwiftUI

struct AddListView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    var body: some View {
        Form{
        Section(header: Text("Personal Information")) {
                
            Text("Hello Buddy!")
               
            }
            Section{
               Button("save"){
                let list = AddList(context: self.managedObjectContext) //ProgrammingLanguage(context: self.managedObjectContext)
                list.name = "chai"
                list.price = 20
                list.count = 0
                list.image = "demo"
                list.totalPrice = 0
                list.id = .init()
                   do {
                       try self.managedObjectContext.save()
                   } catch {
                       // handle the Core Data error
                   }
               }
            }
        }
    }
}

//struct AddListView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddListView(person: <#Binding<Person>#>)
//    }
//}
