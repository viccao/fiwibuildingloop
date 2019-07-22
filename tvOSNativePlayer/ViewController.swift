//
//  ViewController.swift
//  tvOSNativePlayer
//
//  Created by Martin Normark on 11/09/15.
//  Copyright © 2015 MilkshakeHQ. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

enum PlaybackState {
    case unknown
    case initializing
    case initialized
    case playing
    case paused
    case stopped
    case unplayable
}
@available(tvOS 10.0, *)
class ViewController: UIViewController {
    
    var player: AVQueuePlayer? = nil
    var playbackStatus : PlaybackState = .unknown
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    var looper: AVPlayerLooper? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        let videoURL = URL(string: "https://s3.amazonaws.com/fw-devtools/fiwi-internal/assets/video/building.mp4")

        
        let player = AVQueuePlayer()
        looper = AVPlayerLooper(player: player, templateItem: AVPlayerItem(asset: AVAsset(url: videoURL!)))
        
        
        
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player;
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

