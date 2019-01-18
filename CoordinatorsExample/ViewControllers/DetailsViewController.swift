//
//  DetailsViewController.swift
//  CoordinatorsExample
//
//  Created by Alex Ilies on 17/01/2019.
//  Copyright © 2019 hackmajoris. All rights reserved.
//

import Foundation
import UIKit

class DetailsViewController: UIViewController, Storyboarded {
  
  var coordinator: Coordinator? = nil
  var delegate: UIViewController?
  
  @IBOutlet var textTextField: UITextField!
  
  override func viewDidLoad() {}
  
  override func viewWillDisappear(_ animated: Bool) {
    if let coordinator = self.coordinator as? MainCoordinator {
      coordinator.updateText(text: textTextField.text)
    }
  }
  
}
