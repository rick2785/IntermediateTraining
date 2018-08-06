//
//  CustomMigrationPolicy.swift
//  IntermediateTraining
//
//  Created by Rickey Hrabowskie on 3/25/18.
//  Copyright © 2018 Rickey Hrabowskie. All rights reserved.
//

import CoreData

class CustomMigrationPolicy: NSEntityMigrationPolicy {
    
    // Type our transformation function here
    
    @objc func transformNumEmployees(forNum: NSNumber) -> String {
        if forNum.intValue < 150 {
            return "small"
        } else {
            return "very large"
        }
    }
}
