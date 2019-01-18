//
//  Storyboarded.swift
//  CoordinatorsExample
//
//  Created by Alex Ilies on 17/01/2019.
//  Copyright © 2019 hackmajoris. All rights reserved.
//

import UIKit

protocol Storyboarded {
  static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
  static func instantiate() -> Self {
    let className = String(describing: self)
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    
    return storyboard.instantiateViewController(withIdentifier: className) as! Self
  }
}
