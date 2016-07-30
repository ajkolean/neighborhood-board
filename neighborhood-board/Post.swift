//
//  Post.swift
//  neighborhood-board
//
//  Created by admin on 7/27/16.
//  Copyright © 2016 ajkolean. All rights reserved.
//

import Foundation


class Post : NSObject, NSCoding {
    
    private var _imagePath: String!
    private var _title: String!
    private var _postDesc: String!
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postDesc: String {
        return _postDesc
    }
    
    init(imagePath: String, title: String, description: String) {
        
        self._imagePath = imagePath
        self._title = title
        self._postDesc = description
        
    }
    
    override init() {}
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._postDesc = aDecoder.decodeObjectForKey("description") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._postDesc, forKey: "description")
        aCoder.encodeObject(self._title, forKey: "title")
    }
    
}