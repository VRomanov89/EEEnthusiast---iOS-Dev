//
//  ViewController.swift
//  Multithreadingtutorial
//
//  Created by Volodymyr Romanov on 9/27/16.
//  Copyright © 2016 Vladimir Romanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func button1Pressed(_ sender: UIButton) {
        updateImage(button: 1)
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        updateImage(button: 2)
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        updateImage(button: 3)
    }
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    
    func updateImage(button: Int) {
        self.activityIndicator.startAnimating()
        var imageURL = URL(string: "")
        switch button {
        case 1:
            imageURL = URL(string: "http://www.spyderonlines.com/images/wallpapers/electronic-backgrounds/electronic-backgrounds-23.jpg")
        case 2:
            imageURL = URL(string:"https://upload.wikimedia.org/wikipedia/commons/d/d9/Arduino_ftdi_chip-1.jpg")
        case 3:
            imageURL = URL(string:"https://www.walldevil.com/wallpapers/w03/871688-circuits-computer-technology-electronics-pcb.jpg")
        default:
            break
        }
        
        // Asynchronous 
        DispatchQueue.global(qos: DispatchQoS.userInitiated.qosClass).async {
            let fetch = NSData(contentsOf: imageURL! as URL)
            DispatchQueue.main.async {
                if let imageData = fetch {
                    self.activityIndicator.stopAnimating()
                    self.myImage.image = UIImage(data: imageData as Data)
                }
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityIndicator.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

