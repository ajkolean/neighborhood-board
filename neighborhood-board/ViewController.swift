//
//  ViewController.swift
//  neighborhood-board
//
//  Created by admin on 7/27/16.
//  Copyright © 2016 ajkolean. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,
    UITableViewDataSource {
    
    var posts = [Post]()
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var post = Post(imagePath: " ", title: "Post 1", description: "Post 2")
        var post2 = Post(imagePath: " ", title: "Post 2", description: "This is another post. It post test and stuff.")

        var post3 = Post(imagePath: " ", title: "Post 3", description: "This is the best and worst post ever.")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        tableView.reloadData()

        
        

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // select a row to load new data
    }

 

}

