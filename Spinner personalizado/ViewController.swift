//
//  ViewController.swift
//  Spinner personalizado
//
//  Created by Francisco Javier Asensi Benito on 10/1/18.
//  Copyright © 2018 Francisco Javier Asensi Benito. All rights reserved.
//

import UIKit

extension UIView {
    func startRotating(duration: Double = 1) {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            animate.fromValue = 0.0
            animate.toValue = Float(Double.pi)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    func stopRotating() {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) != nil {
            self.layer.removeAnimation(forKey: kAnimationKey)
        }
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var imgLoading: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func bt_arrancar_click(_ sender: UIButton) {
        imgLoading.startRotating()
    }
    
    @IBAction func bt_parar_click(_ sender: UIButton) {
        imgLoading.stopRotating()
    }
}

