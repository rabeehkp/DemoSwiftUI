//
//  AddList+CoreDataProperties.swift
//  addToModelDemo
//
//  Created by rabeeh on 25/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//
//

import Foundation
import CoreData


extension AddList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AddList> {
        return NSFetchRequest<AddList>(entityName: "AddList")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var price: Int16
    @NSManaged public var count: Int16
    @NSManaged public var totalPrice: Int16
    @NSManaged public var image: String?

}
