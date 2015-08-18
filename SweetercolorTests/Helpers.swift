//
//  Helpers.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit

extension CGFloat {
    
    var rnd: CGFloat {
        let scale: CGFloat = 10000000000
        return round(self * scale)/scale
    }
    
}
