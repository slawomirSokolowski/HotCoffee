//
//  CoreDataManager.swift
//  HotCoffeeApp
//
//  Created by slawomir  on 28/01/2020.
//  Copyright © 2020 slawomir . All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    
    var moc: NSManagedObjectContext
    
    private init(moc: NSManagedObjectContext) {
        self.moc = moc
    }
    
}
