//
//  XYZ_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class XYZ_Test: XCTestCase {
    
    // Test source: http://colormine.org/convert/rgb-to-xyz
    
    func testBlack() {
        let color = Sweetercolor.black().XYZ
        let expect:[CGFloat] = [0, 0, 0]
        XCTAssertEqual(color[0].rnd, expect[0].rnd, "")
        XCTAssertEqual(color[1].rnd, expect[1].rnd, "")
        XCTAssertEqual(color[2].rnd, expect[2].rnd, "")
    }
    
    func testWhite() {
        let color = Sweetercolor.white().XYZ
        let expect:[CGFloat] = [95.05, 100, 108.9]
        
        XCTAssertEqual(color[0].rnd, expect[0].rnd, "")
        XCTAssertEqual(color[1].rnd, expect[1].rnd, "")
        XCTAssertEqual(color[2].rnd, expect[2].rnd, "")
    }
    
    func testRandomColor() {
        let color = Sweetercolor(red: 2, green: 8, blue: 94, alpha: 1).XYZ
        let expect:[CGFloat] = [2.1322482275129055, 0.9947240952302578, 10.669293213205593]
        
        XCTAssertEqual(color[0].rnd, expect[0].rnd, "")
        XCTAssertEqual(color[1].rnd, expect[1].rnd, "")
        XCTAssertEqual(color[2].rnd, expect[2].rnd, "")
    }

}
