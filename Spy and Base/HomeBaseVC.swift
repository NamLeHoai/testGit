//
//  HomeBaseVC.swift
//  Spy and Base
//
//  Created by Nam Le on 5/1/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class HomeBaseVC: UIViewController, SpyDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func didFindWeaponOfMassDestruction(found: Bool) {
        // Handle the received data here
        if found{
            print("Launch cruise missiles and invade")
        }else{
            print("Abort the mission to invade")
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendSpySegue"{
            let vc: EnemyBaseVC = segue.destination as! EnemyBaseVC
            vc.delegate = self
        }
    }
    
}
