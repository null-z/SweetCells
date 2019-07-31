//
//  TableViewCellDequeuer.swift
//  Registrator
//
//  Created by null-z on 31/07/2019.
//  Copyright © 2019 NZ. All rights reserved.
//

import UIKit

public extension UITableView {

    func dequeueReusableCell<T: RegistrableTableViewCell>(withClass class: T.Type) -> T? {
        let identifier = `class`.reuseIdentifierFromClass()
        registerIfAutoregistrable(class: `class`, forCellReuseIdentifier: identifier)
        guard let castedCell = dequeueReusableCell(withIdentifier: identifier) as? T else {
            return nil
        }
        return castedCell
    }

    func dequeueReusableCell<T: RegistrableTableViewCell>(withClass class: T.Type, forIndexPath indexPath: IndexPath) -> T {
        let identifier = `class`.reuseIdentifierFromClass()
        registerIfAutoregistrable(class: `class`, forCellReuseIdentifier: identifier)
        let cell = dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        guard let castedCell = cell as? T else {
            fatalError("Cell type casting failed")
        }
        return castedCell
    }

    internal func registerIfAutoregistrable<T: RegistrableTableViewCell>(class: T.Type, forCellReuseIdentifier identifier: String) {
        if `class`.self is AutoregistrableTableViewCell.Type {
            registerIfNeeded(forCellReuseIdentifier: identifier)
        }
    }
}
