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
		awaitSleep(sender: sender)

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
	
	func awaitSleep(sender: UIButton){
		//Code should execute after 0.2 second delay.
		DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
			//Bring's sender's opacity back up to fully opaque.
			sender.alpha = 1.0
		}
	}
	
}

