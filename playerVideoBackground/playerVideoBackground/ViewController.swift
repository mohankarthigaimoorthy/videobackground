//
//  ViewController.swift
//  playerVideoBackground
//
//  Created by Imcrinox Mac on 15/12/1444 AH.
//

import UIKit

class ViewController: VideoSplashViewController {

    @IBOutlet weak var loginBtn: UIButton!
   
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupVideoBackground ()
        
        loginBtn.layer.cornerRadius = 8
        signUpBtn.layer.cornerRadius = 8
    }


    func setupVideoBackground() {
        
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "moments", ofType: "mp4")!)
        
        videoFrame = view.frame
        fillMode = .resizeAspectFill
        alwaysRepeat = true
        sound = true
        startTime = 2.0
        alpha = 0.8
        contentURL = url
    }
}

