//
//  AddItem.swift
//  addToModelDemo
//
//  Created by rabeeh on 14/11/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//

import Foundation
import Foundation
import CoreData

public class AddItem:NSManagedObject,Identifiable{
    @NSManaged public var list: Data?
    @NSManaged public var createdAt: Date?
    
}

extension AddItem{
    static func getAllToDoItem()-> NSFetchRequest<AddItem>{
        let request : NSFetchRequest<AddItem> = AddItem.fetchRequest() as! NSFetchRequest<AddItem>
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
    }
}
