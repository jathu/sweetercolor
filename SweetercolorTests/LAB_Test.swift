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
        
        XCTAssertTrue(color[0].residualCompare(with: expect[0]))
        XCTAssertTrue(color[1].residualCompare(with: expect[1]))
        XCTAssertTrue(color[2].residualCompare(with: expect[2]))
    }
    
    func testWhite() {
        let color = UIColor.white().LAB
        let expect:[CGFloat] = [100, 0.00526049995830391, -0.010408184525267927]
        
        XCTAssertTrue(color[0].residualCompare(with: expect[0]))
        XCTAssertTrue(color[1].residualCompare(with: expect[1]))
        XCTAssertTrue(color[2].residualCompare(with: expect[2]))
    }
    
    func testRandomColor() {
        let color = UIColor(r: 2, g: 8, b: 94, a: 1).LAB
        let expect:[CGFloat] = [8.947414060170729, 33.48449601168331, -49.19236878079187]
        
        XCTAssertTrue(color[0].residualCompare(with: expect[0]))
        XCTAssertTrue(color[1].residualCompare(with: expect[1]))
        XCTAssertTrue(color[2].residualCompare(with: expect[2]))
    }
    
}
