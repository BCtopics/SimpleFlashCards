//
//  Category+Convenience.swift
//  SimpleFlashCards
//
//  Created by Bradley GIlmore on 10/3/22.
//

import Foundation
import CoreData

extension Category {
    
    @discardableResult convenience init(title: String, colorString: String, context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        
        self.title = title
        self.colorString = colorString
    }
    
}
