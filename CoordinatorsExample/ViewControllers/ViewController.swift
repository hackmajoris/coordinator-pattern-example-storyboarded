//
//  ViewController.swift
//  CoordinatorsExample
//
//  Created by Alex Ilies on 17/01/2019.
//  Copyright © 2019 hackmajoris. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
  weak var coordinator: MainCoordinator?
  
  @IBOutlet var textLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func pushButtonDidPress(_ sender: Any) {
    coordinator?.configure()
  }
  
  func updateLabel(text: String?){
    textLabel.text = text ?? "No text" 
  }
}

