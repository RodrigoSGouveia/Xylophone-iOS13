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
		
		switch textLabel {
			case "C":
				guard let url = Bundle.main.url(forResource: "C", withExtension:"wav") else { return }
				player = try! AVAudioPlayer(contentsOf: url)
				player?.volume = 0.08
				player?.play()
			case "D":
				guard let url = Bundle.main.url(forResource: "D", withExtension:"wav") else { return }
				player = try! AVAudioPlayer(contentsOf: url)
				player?.volume = 0.08
				player?.play()
			case "E":
				guard let url = Bundle.main.url(forResource: "E", withExtension:"wav") else { return }
				player = try! AVAudioPlayer(contentsOf: url)
				player?.volume = 0.08
				player?.play()
						
			case "F":
				guard let url = Bundle.main.url(forResource: "F", withExtension:"wav") else { return }
				player = try! AVAudioPlayer(contentsOf: url)
				player?.volume = 0.08
				player?.play()
			case "G":
				guard let url = Bundle.main.url(forResource: "G", withExtension:"wav") else { return }
				player = try! AVAudioPlayer(contentsOf: url)
				player?.volume = 0.08
				player?.play()
			case "A":
				guard let url = Bundle.main.url(forResource: "A", withExtension:"wav") else { return }
				player = try! AVAudioPlayer(contentsOf: url)
				player?.volume = 0.08
				player?.play()
			case "B":
				guard let url = Bundle.main.url(forResource: "B", withExtension:"wav") else { return }
				player = try! AVAudioPlayer(contentsOf: url)
				player?.volume = 0.08
				player?.play()
			default:
				return
		}
		
		
	}
}

