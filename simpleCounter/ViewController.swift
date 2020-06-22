//
//  ViewController.swift
//  simpleCounter
//
//  Created by Muhammad Elsaied on 6/22/20.
//  Copyright © 2020 Muhammad Elsaied. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter : Int = 0

    var timeCounter : Int  = 0
    @IBOutlet weak var mainView : UIImageView!
    @IBOutlet weak var timeCounterLbl : UILabel!
    @IBOutlet weak var counterLbl : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 50.0
        mainView.clipsToBounds = true
        
         let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
            mainView.isUserInteractionEnabled = true
            mainView.addGestureRecognizer(tapGestureRecognizer)
        }
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
          {
//              let tappedImage = tapGestureRecognizer.view as! UIImageView
            if counter == 100 {
                counter = 0
                timeCounter = timeCounter + 1
            }
            counter = counter + 1
            counterLbl.text = "\(counter)"
            timeCounterLbl.text = "\(timeCounter)"
          }
    }
   

