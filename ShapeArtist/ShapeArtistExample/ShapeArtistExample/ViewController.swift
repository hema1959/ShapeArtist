//
//  ViewController.swift
//  ShapeArtistExample
//
//  Created by HEMA VENKATARAMAN on 19/02/2018.
//  Copyright © 2018 HEMA VENKATARAMAN. All rights reserved.
//

import UIKit
import ShapeArtist

class ViewController: UIViewController {
   
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTapped(_ sender: UIButton) {
        
        if sender.titleLabel?.text == "Rect" {
            myshapes.drawRectangle()
        }
        
        
    }
    
}

