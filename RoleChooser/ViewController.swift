//
//  ViewController.swift
//  RoleChooser
//
//  Created by Arman Tarkhanian on 11/28/18.
//  Copyright © 2018 Arman Tarkhanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var primary: UILabel!
    @IBOutlet weak var secondary: UILabel!
    @IBOutlet weak var toptextfield: UITextField!
    @IBOutlet weak var jungtextfield: UITextField!
    @IBOutlet weak var midtextfield: UITextField!
    @IBOutlet weak var bottextfield: UITextField!
    @IBOutlet weak var suptextfield: UITextField!
    
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primary.text = "Primary: " + model.calcMin().0
        secondary.text = "Secondary: " + model.calcSecondMin().0
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }
    @IBAction func topstepper(_ sender: UIStepper) {
        toptextfield.text = Int(sender.value).description
        model.countsAndTimes[0] = [Int(sender.value), Date(), "Top"]
        primary.text = "Primary: " + model.calcMin().0
        secondary.text = "Secondary: " + model.calcSecondMin().0
    }
    @IBAction func jgstepper(_ sender: UIStepper) {
        jungtextfield.text = Int(sender.value).description
        model.countsAndTimes[1] = [Int(sender.value), Date(), "Jungle"]
        primary.text = "Primary: " + model.calcMin().0
        secondary.text = "Secondary: " + model.calcSecondMin().0
    }
    @IBAction func midstepper(_ sender: UIStepper) {
        midtextfield.text = Int(sender.value).description
        model.countsAndTimes[2] = [Int(sender.value), Date(), "Middle"]
        primary.text = "Primary: " + model.calcMin().0
        secondary.text = "Secondary: " + model.calcSecondMin().0
    }
    @IBAction func botstepper(_ sender: UIStepper) {
        bottextfield.text = Int(sender.value).description
        model.countsAndTimes[3] = [Int(sender.value), Date(), "Bottom"]
        primary.text = "Primary: " + model.calcMin().0
        secondary.text = "Secondary: " + model.calcSecondMin().0
    }
    @IBAction func supstepper(_ sender: UIStepper) {
        suptextfield.text = Int(sender.value).description
        model.countsAndTimes[4] = [Int(sender.value), Date(), "Support"]
        primary.text = "Primary: " + model.calcMin().0
        secondary.text = "Secondary: " + model.calcSecondMin().0
    }
    

}

