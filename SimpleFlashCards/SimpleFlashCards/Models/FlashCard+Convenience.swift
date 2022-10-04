//
//  FlashCard+Convenience.swift
//  SimpleFlashCards
//
//  Created by Bradley GIlmore on 10/4/22.
//

import Foundation
import CoreData

extension FlashCard {
    
    @discardableResult convenience init(title: String, description: String, context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        
        self.title = title
        self.cardDescription = description
    }
    
}
