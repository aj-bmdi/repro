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
	
	var pgMIDI: PGMidi?
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		testButton.layer.borderColor = UIColor.black.cgColor
		testButton.layer.borderWidth = 1.0
		testButton.layer.cornerRadius = 4.0
		
		let midi = PGMidi()
		midi.delegate = self
		
		for case let midiSource as PGMidiSource in midi.sources {
			midiSource.addDelegate(self)
		}
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


extension ViewController: PGMidiDelegate {
	func midi(_ midi: PGMidi!, sourceAdded source: PGMidiSource!) {
		print("MIDI source added! \(String(describing: source))")
	}
	
	func midi(_ midi: PGMidi!, sourceRemoved source: PGMidiSource!) {
		print("MIDI source removed! \(String(describing: source))")
	}
	
	func midi(_ midi: PGMidi!, destinationAdded destination: PGMidiDestination!) {
		print("MIDI destination added! \(String(describing: destination))")
	}
	
	func midi(_ midi: PGMidi!, destinationRemoved destination: PGMidiDestination!) {
		print("MIDI destination removed! \(String(describing: destination))")
	}
}


extension ViewController: PGMidiSourceDelegate {
	func midiSource(_ input: PGMidiSource!, midiReceived packetList: UnsafePointer<MIDIPacketList>!) {
		print("MIDI input received! \(String(describing: packetList))")
	}
}
