//
//  Init_Test.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - January 2017 - Mississauga
//  Copyright © 2017 Jathu Satkunarajah. All rights reserved.
//

import XCTest

class Init_Test: XCTestCase {
    
    func testHex1() {
        let color = UIColor(hex: "#FF1170")
        let wanted = UIColor(r: 255, g: 17, b: 112)
        XCTAssertEqual(color, wanted)
    }
    
    func testHex2() {
        let color = UIColor(hex: "3778FF")
        let wanted = UIColor(r: 55, g: 120, b: 255)
        XCTAssertEqual(color, wanted)
    }
    
    func testHex3() {
        let color = UIColor(hex: "#FFFFFF")
        let wanted = UIColor(r: 255, g: 255, b: 255)
        XCTAssertEqual(color, wanted)
    }
    
    func testHex4() {
        let color = UIColor(hex: "#FFF")
        let wanted = UIColor(r: 255, g: 255, b: 255)
        XCTAssertEqual(color, wanted)
    }
    
    func testHex5() {
        let color = UIColor(hex: "#000000")
        let wanted = UIColor(r: 0, g: 0, b: 0)
        XCTAssertEqual(color, wanted)
    }
    
    func testHex6() {
        let color = UIColor(hex: "#000")
        let wanted = UIColor(r: 0, g: 0, b: 0)
        XCTAssertEqual(color, wanted)
    }
    
}
