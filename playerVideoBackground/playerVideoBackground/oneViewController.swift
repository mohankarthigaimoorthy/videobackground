//
//  oneViewController.swift
//  playerVideoBackground
//
//  Created by Imcrinox Mac on 16/12/1444 AH.
//

import UIKit
import AVFoundation

class oneViewController: VideoSplashViewController {

    @IBOutlet weak var loginBtn: UIButton!
   
    @IBOutlet weak var signUpBtn: UIButton!
   
    var player: AVPlayer?
    override func viewDidLoad() {
    super.viewDidLoad()
    playBackgroundVideo ()
        
        loginBtn.layer.cornerRadius = 8
        signUpBtn.layer.cornerRadius = 8
    // Do any additional setup after loading the view, typically from a nib.
    }
    
    func playBackgroundVideo () {
        let path = Bundle.main.path(forResource: "productioned", ofType: ".mp4")
    player = AVPlayer (url: URL(fileURLWithPath: path!))
    player! .actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
    let playerLayer = AVPlayerLayer(player: player)
    playerLayer.frame = self.view.frame
    playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
    self.view.layer.insertSublayer(playerLayer, at: 0)
    NotificationCenter.default.addObserver (self, selector: #selector (playerItemDidReachEnd), name:
    NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player! .currentItem)
    player!.seek (to: CMTime.zero)
    player! .play()
    self.player?.isMuted = true
    }
    @objc override func playerItemDidReachEnd () {
    player!.seek (to: CMTime.zero)
    }
    }
