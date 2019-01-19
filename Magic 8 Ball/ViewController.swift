//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Reichard, Frank (US - Mechanicsburg Delivery) on 1/19/19.
//  Copyright © 2019 Frank Reichard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var ballIndex = 0

    @IBOutlet weak var ballView: UIImageView!
    @IBAction func ballButton(_ sender: UIButton) {
        shakeBall()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        ballView.image = UIImage(named: "ball1")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeBall()
    }

    func shakeBall() {
        ballIndex = Int.random(in: 0...4)
        ballView.image = UIImage(named: ballArray[ballIndex])
    }
    
    
}

