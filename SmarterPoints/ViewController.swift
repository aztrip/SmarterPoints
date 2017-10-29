//
//  ViewController.swift
//  SmarterPoints
//
//  Created by Brad on 9/18/17.
//  Copyright © 2017 Harper DevTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Create varibles
    
    var myCal = ""
    var calories = 0.0
    var myPro = ""
    var protein = 0.0
    var mySug = ""
    var sugar = 0.0
    var mySat = ""
    var satfat = 0.0
    var smarterpoints = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
// Create text field connects
    
    @IBOutlet weak var calInput: UITextField!
    @IBOutlet weak var proInput: UITextField!
    @IBOutlet weak var sgrInput: UITextField!
    @IBOutlet weak var satInput: UITextField!
    @IBOutlet weak var pointsLabel: UILabel!
    
    // Process text fields and convert string to double
    
    @IBAction func calEdit(_ sender: UITextField) {
        myCal = calInput.text!
        
    }
    @IBAction func proEdit(_ sender: UITextField) {
        myPro = proInput.text!
        
    }
    
    @IBAction func sgrEdit(_ sender: UITextField) {
        mySug = sgrInput.text!
        
    }
    
    @IBAction func satEdit(_ sender: UITextField) {
        mySat = satInput.text!
        
    }
    
// Process Calc button, compute using formula
//sp = 0.0303 x calories + 0.1212 x sugar + 0.2727 x satfat - 0.0970 x protein
    
    @IBAction func CalcPressed(_ sender: UIButton) {
  
        calculateSpoints()
        
    }
    
// Process Clear button and clear test fields
    
    @IBAction func ClearPressed(_ sender: UIButton) {
        calInput.text = ""
        proInput.text = ""
        sgrInput.text = ""
        satInput.text = ""
        pointsLabel.text = ""
//        pointsLabel.isHidden
        
    }
    
    func calculateSpoints() {
        
        let satfat = (mySat as NSString).doubleValue
        let sugar = (mySug as NSString).doubleValue
        let protein = (myPro as NSString).doubleValue
        let calories = (myCal as NSString).doubleValue
        
        let smarterpoints = ((calories * 0.0303) + (sugar * 0.1212) + (satfat * 0.2727) - (protein * 0.0970))
        
     pointsLabel.text = "\(Int(smarterpoints))"
        
    }
    
}

