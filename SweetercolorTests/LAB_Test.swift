//
//  LAB_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import XCTest

class LAB_Test: XCTestCase {
    
    // Test source: http://colormine.org/convert/rgb-to-lab

    func testBlack() {
        let color = UIColor.black().LAB
        let expect:[CGFloat] = [0, 0, 0]
        
        XCTAssertEqual(color[0].rnd, expect[0].rnd, "")
        XCTAssertEqual(color[1].rnd, expect[1].rnd, "")
        XCTAssertEqual(color[2].rnd, expect[2].rnd, "")
    }
    
    func testWhite() {
        let color = UIColor.white().LAB
        let expect:[CGFloat] = [100, 0.00526049995830391, -0.010408184525267927]
        
        XCTAssertEqual(color[0].rnd, expect[0].rnd, "")
        XCTAssertEqual(color[1].rnd, expect[1].rnd, "")
        XCTAssertEqual(color[2].rnd, expect[2].rnd, "")
    }
    
    func testRandomColor() {
        let color = UIColor(r: 2, g: 8, b: 94, a: 1).LAB
        let expect:[CGFloat] = [8.947414060170729, 33.48449601168331, -49.19236878079187]
        
        XCTAssertEqual(color[0].rnd, expect[0].rnd, "")
        XCTAssertEqual(color[1].rnd, expect[1].rnd, "")
        XCTAssertEqual(color[2].rnd, expect[2].rnd, "")
    }
    
}
