//
//  ViewController.swift
//  ConvertCGPointTest
//
//  Created by Angelo Stavrow on 2016-09-06.
//  Copyright © 2016 Dropped Bits, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let redFrameOrigin = redView.convert(redView.frame.origin, to: self.view)
        print("Red view frame origin should be (16, 28); actually is \(redFrameOrigin).")
        
        let greenFrameOrigin = greenView.convert(greenView.frame.origin, to: self.view)
        print("Green view frame origin should be (16, \(28 + redView.frame.height)); actually is \(greenFrameOrigin).")
        
        let blueFrameOrigin = blueView.convert(blueView.frame.origin, to: self.view)
        print("Red view frame origin should be (\(16 + greenView.frame.width), \(28 + redView.frame.height)); actually is \(blueFrameOrigin).")
    }

}

