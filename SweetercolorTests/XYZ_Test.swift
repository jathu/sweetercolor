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
        let color = UIColor.black().XYZ
        let expect:[CGFloat] = [0, 0, 0]
        
        XCTAssertTrue(color[0].residualCompare(with: expect[0]))
        XCTAssertTrue(color[1].residualCompare(with: expect[1]))
        XCTAssertTrue(color[2].residualCompare(with: expect[2]))
    }
    
    func testWhite() {
        let color = UIColor.white().XYZ
        let expect:[CGFloat] = [95.05, 100, 108.9]
        
        XCTAssertTrue(color[0].residualCompare(with: expect[0]))
        XCTAssertTrue(color[1].residualCompare(with: expect[1]))
        XCTAssertTrue(color[2].residualCompare(with: expect[2]))
    }
    
    func testRandomColor() {
        let color = UIColor(r: 2, g: 8, b: 94, a: 1).XYZ
        let expect:[CGFloat] = [2.1322482275129055, 0.9947240952302578, 10.669293213205593]
        
        XCTAssertTrue(color[0].residualCompare(with: expect[0]))
        XCTAssertTrue(color[1].residualCompare(with: expect[1]))
        XCTAssertTrue(color[2].residualCompare(with: expect[2]))
    }

}
