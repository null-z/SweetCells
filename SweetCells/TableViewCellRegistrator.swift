//
//  TableViewCellRegistrator.swift
//  Registrator
//
//  Created by Admin on 31/07/2019.
//  Copyright © 2019 NZ. All rights reserved.
//

import UIKit

public extension UITableView  {
    func registerCell<T: RegistrableTableViewCell>(forClass class: T.Type) {
        let className = `class`.reuseIdentifierFromClass()
        registerCell(forCellReuseIdentifier: className)
    }

    func registerCell(forCellReuseIdentifier identifier: String) {
        let nib = UINib.init(nibName: identifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: identifier)
    }
}

extension UITableView {

    internal func registerIfNeeded(forCellReuseIdentifier identifier: String) {
        if !isRegistered(withIdentifier: identifier) {
            registerCell(forCellReuseIdentifier: identifier)
        }
    }

    private func isRegistered(withIdentifier identifier: String) -> Bool {
        guard let registeredNibs = self.value(forKey: "_nibMap") as? [String:UINib] else {
            return false
        }
        if registeredNibs[identifier] == nil {
            return false
        } else {
            return true
        }
    }
}

