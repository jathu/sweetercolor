//
//  fullContrastColor_Test
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class fullContrastColor_Test: XCTestCase {
    
    func testBlack() {
        let color = Sweetercolor.black()
        let white = Sweetercolor.white()
        XCTAssertEqual(color.fullContrastColor, white, "The full contrast color for black should be white.")
    }
    
    func testWhite() {
        let color = Sweetercolor.white()
        let black = Sweetercolor.black()
        XCTAssertEqual(color.fullContrastColor, black, "The full contrast color for white should be black.")
    }

}
