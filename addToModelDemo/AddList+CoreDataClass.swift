//
//  AddList+CoreDataClass.swift
//  addToModelDemo
//
//  Created by rabeeh on 25/09/19.
//  Copyright © 2019 rabeeh. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

@objc(AddList)
public class AddList: NSManagedObject {

    //MARK: -Get Context
       func getcontext () -> NSManagedObjectContext{
           let appDelegate = UIApplication.shared.delegate as! AppDelegate
           return appDelegate.persistentContainer.viewContext
       }
    
    //MARK: - Insert into data to coredata
    func Insert(id:UUID,name: String, image: String,price: Int16, count: Int16,totalPrice:Int16) {
        let context = getcontext()
        let entity = NSEntityDescription.entity(forEntityName: "AddList", in: context)
        let insertInto = NSManagedObject(entity: entity!, insertInto: context)
        insertInto.setValue(name, forKey: "name")
        insertInto.setValue(image, forKey: "image")
        insertInto.setValue(id, forKey: "id")
        insertInto.setValue(price, forKey: "price")
        insertInto.setValue(count, forKey: "count")
        insertInto.setValue(totalPrice, forKey: "totalPrice")
        
        do{
            try context.save()
            print("saved")
            
        } catch let error as NSError{
            print("not saved \(error), \(error.userInfo)")
        } catch{
        }
    }
    
    //MARK: - Fetch from CoreData
       func fetchList() -> [AddList]?{
           var resultArray: [AddList]?
           let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"AddList")
           //        fetchRequest.predicate = NSPredicate(value:true)
           fetchRequest.returnsObjectsAsFaults = false
           do{
               let array = try getcontext().fetch(fetchRequest)
               if let newArray = array as? [AddList], newArray.count > 0{
                   resultArray = newArray
               }
           }
           catch {
               fatalError("Failed to initialize FetchedResultsController: \(error)")
           }
           return resultArray
       }
    
    //MARK: - Update CoreData
    func updateSavedTimes(object: AddList, count:Int16,totalPrice:Int16)  {
        let context = getcontext()
        object.count = count
        object.totalPrice = totalPrice
        do {
            try context.save()
            print("updated!")
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
       
}
