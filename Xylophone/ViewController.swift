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
		changeOpacity(button: sender, opacity: 0.5)
		playSound(textLabel: sender.titleLabel?.text)
		sleep(UInt32(0.2))
		changeOpacity(button: sender, opacity: 1)
	}
	
	func playSound(textLabel: String?){
		
		guard let url = Bundle.main.url(forResource: textLabel ?? "", withExtension:"wav") else { return }
		player = try! AVAudioPlayer(contentsOf: url)
		player?.volume = 0.08
		player?.play()
		
	}
	
	func changeOpacity(button: UIButton, opacity: CGFloat){
		button.backgroundColor?.withAlphaComponent(opacity)
	
	}
	
}

