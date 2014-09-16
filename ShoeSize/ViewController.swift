//
//  ViewController.swift
//  ShoeSize
//
//  Created by Jamie Layne on 9/16/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet var shoeSizeField: UITextField!
	@IBOutlet var shoeSizeLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func convertSize(sender: AnyObject) {
		let shoeSize = shoeSizeField.text.toInt()
		let conversionConstant = 30
		var euroSize = shoeSize! + conversionConstant
		
		shoeSizeLabel.hidden = false
		shoeSizeLabel.text = "Men's shoe size in Europe: \(euroSize)"
		
	}

}

