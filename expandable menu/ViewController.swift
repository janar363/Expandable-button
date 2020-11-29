//
//  ViewController.swift
//  expandable menu
//
//  Created by janardhan karravula on 26/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var expandView: UIView!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    
    var flag = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        expandView.layer.cornerRadius = expandView.frame.width / 2
        b1.layer.cornerRadius = b1.frame.width / 2
        b2.layer.cornerRadius = b1.frame.width / 2
        b3.layer.cornerRadius = b1.frame.width / 2
        
        self.expandView.backgroundColor = .none
        self.b2.isHidden = true
        self.b3.isHidden = true
    }
         
    @IBAction func b1Pressed(_ sender: UIButton) {
        
        if flag {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.expandView.backgroundColor = .lightGray
                self.b2.isHidden = false
                self.b3.isHidden = false
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.expandView.backgroundColor = .none
                self.b2.isHidden = true
                self.b3.isHidden = true
            }
        }
        flag  = !flag
    }
    
    @IBAction func bitmapSelected(_ sender: UIButton) {
        print("Bitmap selected")
    }
    @IBAction func vectorSelected(_ sender: UIButton) {
        print("Vector selected")
    }
}

