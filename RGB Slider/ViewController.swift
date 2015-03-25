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
    @IBOutlet weak var redValue: UITextView!
    @IBOutlet weak var greenValue: UITextView!
    @IBOutlet weak var blueValue: UITextView!
    
    @IBOutlet weak var boxView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        redSlider.value = defaults.floatForKey("red")
        greenSlider.value = defaults.floatForKey("green")
        blueSlider.value = defaults.floatForKey("blue")
        
        
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "openColor"){
            let newViewController = segue.destinationViewController as UIViewController
            newViewController.view.backgroundColor = boxView.backgroundColor
        }
        
        if (segue.identifier == "blankView"){
            let newViewController = segue.destinationViewController as UIViewController
            newViewController.view.backgroundColor = UIColor.whiteColor()
        }
        
    }

    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue  = CGFloat(blueSlider.value)
        println(redSlider.value)
        //self.foreignCurrencyOutput.text = String(format:"%.3f", finalAmount)
        
        redValue.text = String(format:"%.3f", redSlider.value)
        greenValue.text = String(format:"%.3f", greenSlider.value)
        blueValue.text = String(format:"%.3f", blueSlider.value)
        
        boxView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setFloat(redSlider.value, forKey: "red")
        defaults.setFloat(greenSlider.value, forKey: "green")
        defaults.setFloat(blueSlider.value, forKey: "blue")
        defaults.synchronize()
    
    }

    //Test comment for git
}

