//
//  RegistrableTableViewCell.swift
//  Registrator
//
//  Created by Admin on 31/07/2019.
//  Copyright © 2019 NZ. All rights reserved.
//

import UIKit

public protocol RegistrableTableViewCell: UITableViewCell {
    //reuse identifier must be equal to class name
    //cell xib filename must be equal to class name
}

public extension RegistrableTableViewCell {
    static func reuseIdentifierFromClass() -> String {
        let className = String(describing: self)
        return className
    }
}
