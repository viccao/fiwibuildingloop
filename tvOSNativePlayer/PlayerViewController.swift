//
//  PlayerViewController.swift
//  tvOSNativePlayer
//
//  Created by Martin Normark on 11/09/15.
//  Copyright © 2015 MilkshakeHQ. All rights reserved.
//

import Foundation
import UIKit
import AVKit

@available(tvOS 10.0, *)
class PlayerViewController: AVPlayerViewController {

    
}
extension AVPlayer {
    func restart() -> Void {
        self.pause()
        self.seek(to: kCMTimeZero)
        self.play()
        
    }
}
