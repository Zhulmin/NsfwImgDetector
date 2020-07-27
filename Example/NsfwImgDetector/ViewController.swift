//
//  ViewController.swift
//  NsfwImgDetector
//
//  Created by Ra_Hulmin on 07/27/2020.
//  Copyright (c) 2020 Ra_Hulmin. All rights reserved.
//

import UIKit
import NsfwImgDetector


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let img = UIImage(named: "1") else { return }
        if #available(iOS 11.0, *) {
            filter(image: img)
        } else {
            // Fallback on earlier versions
        }
    }
    
    
    @available(iOS 11.0, *)
    func filter(image:UIImage) {
        
        

        
        
        let detector = NsfwImgDetector()
                    
        detector.check(image: image) { (isNoSafe, confidence) in
            print("isNoSafe:\(isNoSafe) confidence:\(confidence)")
            if isNoSafe == false {
                //safe
            }else if (confidence > 0.9) {
                // porn
            }else if (confidence > 0.5) {
                // sexy picture, may porn
            }else {
                // sexy picture
            }
        }
    }
    

}

