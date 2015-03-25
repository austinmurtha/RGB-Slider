//
//  ViewController.swift
//  RGB Slider
//
//  Created by Austin Murtha on 3/24/15.
//  Copyright (c) 2015 AustinMurtha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var boxView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(boxView)
        //boxView.backgroundColor = UIColor.blackColor()
        boxView.layer.borderColor = UIColor.blackColor().CGColor
        boxView.layer.borderWidth = 1
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue  = CGFloat(blueSlider.value)
        
        boxView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    
    
    }

    //Test comment for git
}

