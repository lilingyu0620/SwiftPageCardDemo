//
//  CollectionViewCell.swift
//  SwiftCollectionViewPageCardDemo
//
//  Created by lly on 2020/3/8.
//  Copyright © 2020 lly. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var mLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func config(with index:Int){
        
        self.mLabel.text = "\(index)"
        
    }
}
