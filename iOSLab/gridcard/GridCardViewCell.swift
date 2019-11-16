//
//  GridCardViewCell.swift
//  iOSLab
//
//  Created by Pedro Ontiveros on 1/9/19.
//  Copyright © 2019 Pedro Ontiveros. All rights reserved.
//

import UIKit

public enum GridCardType:Int {
    case large
    case medium
    case small
}

class GridCardViewCell: UITableViewCell {
    
    open var gridCardType: GridCardType! = .medium
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("starting the object of cell");
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        print("setting selected cell");
        // Configure the view for the selected state
        switch self.gridCardType {
            case .medium?:
                self.backgroundColor = UIColor.blue;
            case .small?:
                self.backgroundColor = UIColor.red;
            default:
                self.backgroundColor = UIColor.green;
        }
        
    }
    
}
