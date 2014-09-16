//
//  ViewController.swift
//  ShoeSize
//
//  Created by Jamie Layne on 9/16/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet var mensShoeSizeField: UITextField!
	@IBOutlet var mensShoeSizeLabel: UILabel!
	@IBOutlet var womensShoeSizeField: UITextField!
	@IBOutlet var womensShoeSizeLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func convertMensSize(sender: AnyObject) {
		let shoeSize = mensShoeSizeField.text.toInt()
		let conversionConstant = 30
		var euroSize = shoeSize! + conversionConstant
		
		mensShoeSizeLabel.hidden = false
		mensShoeSizeLabel.text = "Men's shoe size in Europe: \(euroSize)"
		
	}
	
	@IBAction func convertWomensSize(sender: AnyObject) {
		let shoeSize = (womensShoeSizeField.text as NSString).doubleValue
		let conversionConstant = 30.5
		var euroSize = shoeSize + conversionConstant
		
		womensShoeSizeLabel.hidden = false
		womensShoeSizeLabel.text = "Women's shoe size in Europe: \(euroSize)"
		
	}

}

