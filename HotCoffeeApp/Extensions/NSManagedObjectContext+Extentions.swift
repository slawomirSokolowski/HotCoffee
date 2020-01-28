//
//  NSManagedObjectContext+Extentions.swift
//  HotCoffeeApp
//
//  Created by slawomir  on 28/01/2020.
//  Copyright © 2020 slawomir . All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
}
