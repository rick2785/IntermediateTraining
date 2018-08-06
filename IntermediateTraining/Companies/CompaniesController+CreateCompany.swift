//
//  CompaniesController+CreateCompany.swift
//  IntermediateTraining
//
//  Created by Rickey Hrabowskie on 3/15/18.
//  Copyright © 2018 Rickey Hrabowskie. All rights reserved.
//

import UIKit

extension CompaniesController: CreateCompanyControllerDelegate {
    
    // Specify your extension methods here....
    func didEditCompany(company: Company) {
        // Update my tableView somehow
        let row = companies.index(of: company)
        let reloadIndexPath = IndexPath(row: row!, section: 0)
        tableView.reloadRows(at: [reloadIndexPath], with: .middle)
    }
    
    func didAddCompany(company: Company) {
        companies.append(company)
        let newIndexPath = IndexPath(row: companies.count - 1, section: 0)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
    }
}
