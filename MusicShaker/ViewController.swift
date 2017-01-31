//
//  ViewController.swift
//  MusicShaker
//
//  Created by Ahmed T Khalil on 1/23/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()
    let songs = ["LetMeLoveYou","ISeeFire","ILikeBadHouseVersion","INeedLove"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake{
            let randomSong = Int(arc4random_uniform(4))
            
            let audioPath = Bundle.main.path(forResource: songs[randomSong], ofType: "mp3")
            
            do{
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
                player.play()
            }catch{
                //process errors
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

