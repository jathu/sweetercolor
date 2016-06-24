//
//  Helpers.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit

extension CGFloat {
    
    func residualCompare(with number: CGFloat) -> Bool {
        return abs(number - self) <= abs(self*0.01)
    }
    
}
