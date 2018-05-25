//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Erick Ortiz on 1/18/18.
//  Copyright © 2018 eortxz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5",]
    
    @IBOutlet weak var ballView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateBallImage(){
        //randomDiceIndex1 = Int(arc4random_uniform(6))
        randomBallNumber = Int(arc4random_uniform(4))
        // diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        ballView.image = UIImage(named : ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }


}

