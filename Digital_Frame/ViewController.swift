//
//  ViewController.swift
//  Digital_Frame
//
//  Created by tk's macbook on 2017. 5. 29..
//  Copyright © 2017년 tk's macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var toggleButton: UIButton!
    
    @IBOutlet weak var speedSlider: UISlider!
    
    @IBOutlet weak var speedViewer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let cuteImages = [UIImage(named:"1.jpg")!,
                          UIImage(named:"2.jpg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpeg")!,
                          UIImage(named:"6.jpg")!,
                          UIImage(named:"7.jpg")!,
                          UIImage(named:"8.jpg")!,
                          UIImage(named:"9.jpg")!,
                          UIImage(named:"10.png")!,
                          UIImage(named:"11.jpg")!,
                          UIImage(named:"12.jpg")!,
                          UIImage(named:"13.jpg")!,
                          UIImage(named:"14.jpeg")!,
                          UIImage(named:"15.jpg")!]
    
        imgView.animationImages = cuteImages
        imgView.animationDuration = 15.0
        //imgView.startAnimating()
    }

    @IBAction func toggleAction(_ sender: AnyObject) {
        
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        }else{
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
        }
    }
   
    @IBAction func changeSpeedAction(_ sender: AnyObject) {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()

        toggleButton.setTitle("Stop", for: UIControlState.normal)
        speedViewer.text = "\(speedSlider.value)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

