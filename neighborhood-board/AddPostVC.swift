//
//  AddPostVC.swift
//  neighborhood-board
//
//  Created by admin on 7/30/16.
//  Copyright © 2016 ajkolean. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    
    @IBOutlet weak var descField: UITextField!
    
    @IBOutlet weak var postImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true

    }


    @IBAction func addPicBtnPressed(sender: UIButton!) {
        
        sender.setTitle("", forState: .Normal)
    }

    @IBAction func makePostBtnPressed(sender: AnyObject) {
        
        
    }

    @IBAction func cancelBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
}
