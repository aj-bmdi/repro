//
//  ViewController.swift
//  Core MIDI Crash Loop
//
//  Created by Adam Jansch on 01/07/2019.
//  Copyright © 2019 MultiTracks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var testButton: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		testButton.layer.borderColor = UIColor.black.cgColor
		testButton.layer.borderWidth = 1.0
		testButton.layer.cornerRadius = 4.0
	}
	
	
	@IBAction func testButtonTouchDown(_ sender: UIButton) {
		sender.backgroundColor = .purple
	}
	
	@IBAction func testButtonTouchUpInside(_ sender: UIButton) {
		sender.backgroundColor = .clear
	}
	
	@IBAction func testButtonTouchUpOutside(_ sender: UIButton) {
		sender.backgroundColor = .clear
	}
}
