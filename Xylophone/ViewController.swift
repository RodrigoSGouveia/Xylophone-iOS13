//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	var player: AVAudioPlayer?
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

	@IBAction func keyPressed(_ sender: UIButton) {
		print(sender.titleLabel ?? "")
		playSound(textLabel: sender.titleLabel?.text)
	}
	
	func playSound(textLabel: String?){
		
		guard let url = Bundle.main.url(forResource: textLabel ?? "", withExtension:"wav") else { return }
		player = try! AVAudioPlayer(contentsOf: url)
		player?.volume = 0.08
		player?.play()
		
	}
}

