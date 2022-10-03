//
//  CategoryController.swift
//  SimpleFlashCards
//
//  Created by Bradley GIlmore on 10/3/22.
//

import Foundation
import CoreData

class CategoryController {
   
    static let shared = CategoryController()
    
    var fetchResultsController: NSFetchedResultsController<Category>

    init() {
        let request: NSFetchRequest<Category> = Category.fetchRequest()
        
        let sort = NSSortDescriptor(key: "title", ascending: true)
        
        request.sortDescriptors = [sort]
        
        fetchResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: CoreDataStack.context, sectionNameKeyPath: nil, cacheName: nil)
        
        do {
            try fetchResultsController.performFetch()
        } catch {
            NSLog("\(error.localizedDescription)")
        }
    }
    
    func addCategoryWith(title: String, colorString: String) {
        
        _ = Category(title: title,colorString: colorString)
        
        saveToPersistentStore()
    }
    
    func remove(category: Category) {
        
        let moc = CoreDataStack.context
        moc.delete(category)
        
        saveToPersistentStore()
        
    }
    
    func update(category: Category, title: String, colorString: String) {
        
        category.title = title
        category.colorString = colorString
        saveToPersistentStore()
        
    }
    
    func saveToPersistentStore() {
        
        let moc = CoreDataStack.context
        
        do {
            try moc.save()
        } catch {
            NSLog("Error saving \(error.localizedDescription)")
        }
        
    }



}

