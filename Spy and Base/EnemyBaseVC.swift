//
//  EnemyBaseVC.swift
//  Spy and Base
//
//  Created by Nam Le on 5/1/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

protocol SpyDelegate {
    func didFindWeaponOfMassDestruction(found : Bool)
}

class EnemyBaseVC: UIViewController {

    let hasWeaponOfMassDescrtruction : Bool = true
    var delegate: SpyDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func sendingMessage(_ sender: Any) {
        if delegate != nil {
            delegate?.didFindWeaponOfMassDestruction(found: hasWeaponOfMassDescrtruction)
            dismiss(animated: true, completion: nil)
        }
        
    }
    
}
