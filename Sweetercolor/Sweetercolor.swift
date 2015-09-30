//
//  Sweetercolor.swift
//  Sweetercolor
//
//  Created by Jathu Satkunarajah - August 2015 - Toronto
//  Copyright (c) 2015 Jathu Satkunarajah. All rights reserved.
//

import UIKit

class Sweetercolor: NSObject {
  
    // This UIColor is the primary color information for this class
    let color: UIColor
    
    /**
        Create a Sweetercolor with a hex value.
        
        - parameter hex:     The hex color, i.e. 0xFF0072.
        - parameter alpha:   The opacity of the color, value between [0,1]. Optional. Default: 1
    */
    init(hex: Int, alpha: CGFloat = 1) {
        let R = CGFloat((hex >> 16) & 0xFF)/255
        let G = CGFloat((hex >> 8) & 0xFF)/255
        let B = CGFloat(hex & 0xFF)/255
        self.color = UIColor(red: R, green: G, blue: B, alpha: alpha)
    }
    
    /**
        Create a Sweetercolor with an UIColor object.
    
        - parameter color:   Color the color to be made.
    */
    init(color: UIColor) {
        self.color = color
    }
    
    /**
        Create a Sweetercolor with a RGB(A) values. The RGB values must *ALL*
        either be between [0, 1] OR [0, 255], do not interchange between either one.
    
        - parameter red:     Red value between [0, 1] OR [0, 255].
        - parameter green:   Green value between [0, 1] OR [0, 255].
        - parameter blue:    Blue value between [0, 1] OR [0, 255].
        - parameter alpha:   The opacity of the color, value between [0, 1]. Optional. Default: 1
    */
    init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) {
        if (1 < red) || (1 < green) || (1 < blue) {
            self.color = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
        } else {
            self.color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        }
    }
    
    /**
        Create a Sweetercolor with a HSB(A) values.
        
        - parameter hue:         Hue value between [0, 1] OR [0, 360].
        - parameter saturation:  Saturation value between [0, 1] OR [0, 100].
        - parameter brightness:  Brightness value between [0, 1] OR [0, 100].
        - parameter alpha:       The opacity of the color, value between [0,1]. Optional. Default: 1
    */
    init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat = 1) {
        if (1 < hue) || (1 < saturation) || (1 < brightness) {
            self.color = UIColor(hue: hue/360, saturation: saturation/100, brightness: brightness/100, alpha: alpha)
        } else {
            self.color = UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
        }
    }
    
    override var description: String {
        return self.color.description
    }
    
    override var hash: Int {
        return self.color.hash
    }
    
    override func isEqual(object: AnyObject?) -> Bool {
        return (self.hash == object!.hash)
    }
    
    /**
        Create a black Sweetercolor. RGBA = [0, 0, 0, 1]
    */
    class func black() -> Sweetercolor {
        return Sweetercolor(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    /**
        Create a gray Sweetercolor. RGBA = [128, 128, 128, 1]
    */
    class func gray() -> Sweetercolor {
        return Sweetercolor(red: 128, green: 128, blue: 128, alpha: 1)
    }
 
    /**
        Create a dark gray Sweetercolor. RGBA = [85, 85, 85, 1]
    */
    class func darkGray() -> Sweetercolor {
        return Sweetercolor(red: 85, green: 85, blue: 85, alpha: 1)
    }

    /**
        Create a light gray Sweetercolor. RGBA = [170, 170, 170, 1]
    */
    class func lightGray() -> Sweetercolor {
        return Sweetercolor(red: 170, green: 170, blue: 170, alpha: 1)
    }

    /**
        Create a white Sweetercolor. RGBA = [255, 255, 255, 1]
    */
    class func white() -> Sweetercolor {
        return Sweetercolor(red: 255, green: 255, blue: 255, alpha: 1)
    }

    /**
        Create a red Sweetercolor. RGBA = [255, 0, 0, 1]
    */
    class func red() -> Sweetercolor {
        return Sweetercolor(red: 255, green: 0, blue: 0, alpha: 1)
    }
    
    /**
        Create a green Sweetercolor. RGBA = [0, 255, 0, 1]
    */
    class func green() -> Sweetercolor {
        return Sweetercolor(red: 0, green: 255, blue: 0, alpha: 1)
    }

    /**
        Create a blue Sweetercolor. RGBA = [0, 0, 255, 1]
    */
    class func blue() -> Sweetercolor {
        return Sweetercolor(red: 0, green: 0, blue: 255, alpha: 1)
    }
    
    /**
        Create a cyan Sweetercolor. RGBA = [0, 255, 255, 1]
    */
    class func cyan() -> Sweetercolor {
        return Sweetercolor(red: 0, green: 255, blue: 255, alpha: 1)
    }
    
    /**
        Create a yellow Sweetercolor. RGBA = [255, 255, 0, 1]
    */
    class func yellow() -> Sweetercolor {
        return Sweetercolor(red: 255, green: 255, blue: 0, alpha: 1)
    }
    
    /**
        Create a magenta Sweetercolor. RGBA = [255, 0, 255, 1]
    */
    class func magenta() -> Sweetercolor {
        return Sweetercolor(red: 255, green: 0, blue: 255, alpha: 1)
    }
    
    /**
        Create an orange Sweetercolor. RGBA = [255, 128, 0, 1]
    */
    class func orange() -> Sweetercolor {
        return Sweetercolor(red: 255, green: 128, blue: 0, alpha: 1)
    }
    
    /**
        Create a purple Sweetercolor. RGBA = [128, 0, 128, 1]
    */
    class func purple() -> Sweetercolor {
        return Sweetercolor(red: 128, green: 0, blue: 128, alpha: 1)
    }
    
    /**
        Create a brown Sweetercolor. RGBA = [153, 102, 51, 1]
    */
    class func brown() -> Sweetercolor {
        return Sweetercolor(red: 153, green: 102, blue: 51, alpha: 1)
    }
    
    /**
        Create a clear Sweetercolor. RGBA = [0, 0, 0, 0]
    */
    class func clear() -> Sweetercolor {
        return Sweetercolor(red: 0, green: 0, blue: 0, alpha: 0)
    }
    
    /**
        Create a UofT Varsity Blues Sweetercolor. RGBA = [0, 42, 92, 1]
    */
    class func varsityBlue() -> Sweetercolor {
        return Sweetercolor(red: 0, green: 42, blue: 92, alpha: 1)
    }
    
    /**
        Create a random Sweetercolor.
    */
    class func random() -> Sweetercolor {
        // Random hue
        let H = CGFloat(arc4random_uniform(360))
        // Limit saturation to [70, 100]
        let S = CGFloat(arc4random_uniform(30) + 70)
        // Limit brightness to [30, 80]
        let B = CGFloat(arc4random_uniform(50) + 30)
        
        return Sweetercolor(hue: H, saturation: S, brightness: B, alpha: 1)
    }
    
    
    
    
    
    
    
    
    
    /**
        Get the red, green, blue and alpha values.
    
        - returns: An array of four CGFloat numbers from [0, 1] representing RGBA respectively.
    */
    var RGBA: [CGFloat] {
        var RGBA: [CGFloat] = [0,0,0,0]
        self.color.getRed(&RGBA[0], green: &RGBA[1], blue: &RGBA[2], alpha: &RGBA[3])
        return RGBA
    }
    
    /**
        Get the human readable red, green, blue and alpha values.
    
        - returns: An array of four CGFloat numbers from [0, 255] representing RGBA respectively.
    */
    var humanRGBA: [CGFloat] {
        let RGBA = self.RGBA
        return [round(RGBA[0] * 255), round(RGBA[1] * 255), round(RGBA[2] * 255), RGBA[3]]
    }
    
    /**
        Get the hue, saturation, brightness and alpha values.
    
        - returns: An array of four CGFloat numbers from [0, 255] representing HSBA respectively.
    */
    var HSBA: [CGFloat] {
        var HSBA: [CGFloat] = [0,0,0,0]
        self.color.getHue(&HSBA[0], saturation: &HSBA[1], brightness: &HSBA[2], alpha: &HSBA[3])
        return HSBA
    }
  
    /**
        Get the human readable hue, saturation, brightness and alpha values.
    
        - returns: An array of four CGFloat numbers representing HSBA respectively. Ranges: H[0,360], S[0,100], B[0,100], A[0,1]
    */
    var humanHSBA: [CGFloat] {
        let HSBA = self.HSBA
        return [round(HSBA[0] * 360), round(HSBA[1] * 100), round(HSBA[2] * 100), HSBA[3]]
    }
    
    /**
        Get the CIE XYZ values.
    
        - returns: An array of three CGFloat numbers representing XYZ respectively.
    */
    var XYZ: [CGFloat] {
        // http://www.easyrgb.com/index.php?X=MATH&H=02#text2
        
        let RGBA = self.RGBA
        
        func XYZ_helper(c: CGFloat) -> CGFloat {
            return (0.04045 < c ? pow((c + 0.055)/1.055, 2.4) : c/12.92) * 100
        }
        
        let R = XYZ_helper(RGBA[0])
        let G = XYZ_helper(RGBA[1])
        let B = XYZ_helper(RGBA[2])
        
        let X: CGFloat = (R * 0.4124) + (G * 0.3576) + (B * 0.1805)
        let Y: CGFloat = (R * 0.2126) + (G * 0.7152) + (B * 0.0722)
        let Z: CGFloat = (R * 0.0193) + (G * 0.1192) + (B * 0.9505)
        
        return [X, Y, Z]
    }
    
    
    /**
        Get the CIE L*ab values.
    
        - returns: An array of three CGFloat numbers representing LAB respectively.
    */
    var LAB: [CGFloat] {
        // http://www.easyrgb.com/index.php?X=MATH&H=07#text7
        
        let XYZ = self.XYZ
        
        func LAB_helper(c: CGFloat) -> CGFloat {
            return 0.008856 < c ? pow(c, 1/3) : ((7.787 * c) + (16/116))
        }
        
        let X: CGFloat = LAB_helper(XYZ[0]/95.047)
        let Y: CGFloat = LAB_helper(XYZ[1]/100.0)
        let Z: CGFloat = LAB_helper(XYZ[2]/108.883)
        
        let L: CGFloat = (116 * Y) - 16
        let A: CGFloat = 500 * (X - Y)
        let B: CGFloat = 200 * (Y - Z)
        
        return [L, A, B]
    }
    
    /**
        Get the relative luminosity value of the color. This follows the W3 specs of luminosity
        to give weight to colors which humans perceive more of.
    
        - returns: A CGFloat representing the relative luminosity.
    */
    var luminance: CGFloat {
        // http://www.w3.org/WAI/GL/WCAG20-TECHS/G18.html
        
        let RGBA = self.RGBA
        
        func lumHelper(c: CGFloat) -> CGFloat {
            return (c < 0.03928) ? (c/12.92): pow((c+0.055)/1.055, 2.4)
        }
        
        return 0.2126 * lumHelper(RGBA[0]) + 0.7152 * lumHelper(RGBA[1]) + 0.0722 * lumHelper(RGBA[2])
    }
    
    /**
        Determine if the color is dark based on the relative luminosity of the color.
    
        - returns: A boolean: true if it is dark and false if it is not dark.
    */
    var isDarkColor: Bool {
        return self.luminance < 0.5
    }
    
    /**
        Determine if the color is light based on the relative luminosity of the color.
    
        - returns: A boolean: true if it is light and false if it is not light.
    */
    var isLightColor: Bool {
        return !self.isDarkColor
    }
    
    /**
        Determine if this colors is darker than the compared color based on the relative luminosity of both colors.
    
        - parameter compareColor: A Sweetercolor to compare.
        
        - returns: A boolean: true if this colors is darker than the compared color and false if otherwise.
    */
    func isDarkerThan(compareColor: Sweetercolor) -> Bool {
        return self.luminance < compareColor.luminance
    }
 
    /**
        Determine if this colors is lighter than the compared color based on the relative luminosity of both colors.
    
        - parameter compareColor: A Sweetercolor to compare.
    
        - returns: A boolean: true if this colors is lighter than the compared color and false if otherwise.
    */
    func isLighterThan(compareColor: Sweetercolor) -> Bool {
        return !self.isDarkerThan(compareColor)
    }
    
    /**
        Determine if this color is either black or white.
        
        - returns: A boolean: true if this color is black or white and false otherwise.
    */
    var isBlackOrWhite: Bool {
        let RGBA = self.RGBA
        let isBlack = RGBA[0] < 0.09 && RGBA[1] < 0.09 && RGBA[2] < 0.09
        let isWhite = RGBA[0] > 0.91 && RGBA[1] > 0.91 && RGBA[2] > 0.91
        
        return isBlack || isWhite
    }
    
    /**
        Detemine the distance between two colors based on the way humans perceive them.
        Uses the Sharma 2004 alteration of the CIEDE2000 algorithm.
    
        - parameter compareColor: A Sweetercolor to compare.
    
        - returns: A CGFloat representing the deltaE
    */
    func CIEDE2000(compareColor: Sweetercolor) -> CGFloat {
        // CIEDE2000, Sharma 2004 -> http://www.ece.rochester.edu/~gsharma/ciede2000/ciede2000noteCRNA.pdf
        
        func rad2deg(r: CGFloat) -> CGFloat {
            return r * CGFloat(180/M_PI)
        }
        
        func deg2rad(d: CGFloat) -> CGFloat {
            return d * CGFloat(M_PI/180)
        }
        
        let k_l = CGFloat(1), k_c = CGFloat(1), k_h = CGFloat(1)
        
        let LAB1 = self.LAB
        let L_1 = LAB1[0], a_1 = LAB1[1], b_1 = LAB1[2]
        
        let LAB2 = compareColor.LAB
        let L_2 = LAB2[0], a_2 = LAB2[1], b_2 = LAB2[2]
        
        let C_1ab = sqrt(pow(a_1, 2) + pow(b_1, 2))
        let C_2ab = sqrt(pow(a_2, 2) + pow(b_2, 2))
        let C_ab  = (C_1ab + C_2ab)/2
        
        let G = 0.5 * (1 - sqrt(pow(C_ab, 7)/(pow(C_ab, 7) + pow(25, 7))))
        let a_1_p = (1 + G) * a_1
        let a_2_p = (1 + G) * a_2
        
        let C_1_p = sqrt(pow(a_1_p, 2) + pow(b_1, 2))
        let C_2_p = sqrt(pow(a_2_p, 2) + pow(b_2, 2))
        
        // Read note 1 (page 23) for clarification on radians to hue degrees
        let h_1_p = (b_1 == 0 && a_1_p == 0) ? 0 : (atan2(b_1, a_1_p) + CGFloat(2 * M_PI)) * CGFloat(180/M_PI)
        let h_2_p = (b_2 == 0 && a_2_p == 0) ? 0 : (atan2(b_2, a_2_p) + CGFloat(2 * M_PI)) * CGFloat(180/M_PI)
        
        let deltaL_p = L_2 - L_1
        let deltaC_p = C_2_p - C_1_p
        
        var h_p: CGFloat = 0
        if (C_1_p * C_2_p) == 0 {
            h_p = 0
        } else if fabs(h_2_p - h_1_p) <= 180 {
            h_p = h_2_p - h_1_p
        } else if (h_2_p - h_1_p) > 180 {
            h_p = h_2_p - h_1_p - 360
        } else if (h_2_p - h_1_p) < -180 {
            h_p = h_2_p - h_1_p + 360
        }
        
        let deltaH_p = 2 * sqrt(C_1_p * C_2_p) * sin(deg2rad(h_p/2))
        
        let L_p = (L_1 + L_2)/2
        let C_p = (C_1_p + C_2_p)/2
        
        var h_p_bar: CGFloat = 0
        if (h_1_p * h_2_p) == 0 {
            h_p_bar = h_1_p + h_2_p
        } else if fabs(h_1_p - h_2_p) <= 180 {
            h_p_bar = (h_1_p + h_2_p)/2
        } else if fabs(h_1_p - h_2_p) > 180 && (h_1_p + h_2_p) < 360 {
            h_p_bar = (h_1_p + h_2_p + 360)/2
        } else if fabs(h_1_p - h_2_p) > 180 && (h_1_p + h_2_p) >= 360 {
            h_p_bar = (h_1_p + h_2_p - 360)/2
        }

        let T1 = cos(deg2rad(h_p_bar - 30))
        let T2 = cos(deg2rad(2 * h_p_bar))
        let T3 = cos(deg2rad((3 * h_p_bar) + 6))
        let T4 = cos(deg2rad((4 * h_p_bar) - 63))
        let T = 1 - rad2deg(0.17 * T1) + rad2deg(0.24 * T2) - rad2deg(0.32 * T3) + rad2deg(0.20 * T4)
        
        let deltaTheta = 30 * exp(-pow((h_p_bar - 275)/25, 2))
        let R_c = 2 * sqrt(pow(C_p, 7)/(pow(C_p, 7) + pow(25, 7)))
        let S_l =  1 + ((0.015 * pow(L_p - 50, 2))/sqrt(20 + pow(L_p - 50, 2)))
        let S_c = 1 + (0.045 * C_p)
        let S_h = 1 + (0.015 * C_p * T)
        let R_t = -sin(deg2rad(2 * deltaTheta)) * R_c
        
        // Calculate total
        
        let P1 = deltaL_p/(k_l * S_l)
        let P2 = deltaC_p/(k_c * S_c)
        let P3 = deltaH_p/(k_h * S_h)
        let deltaE = sqrt(pow(P1, 2) + pow(P2, 2) + pow(P3, 2) + (R_t * P2 * P3))
        
        return deltaE
    }
    
    /**
        Detemine the distance between two colors based on the way humans perceive them.
        Uses the CIE94 algorithm.
    
        - parameter compareColor: A Sweetercolor to compare.
    
        - returns: A CGFloat representing the deltaE
    */
    func CIE94(compareColor: Sweetercolor) -> CGFloat {
        // https://en.wikipedia.org/wiki/Color_difference#CIE94
        
        let k_L:CGFloat = 1
        let k_C:CGFloat = 1
        let k_H:CGFloat = 1
        let k_1:CGFloat = 0.045
        let k_2:CGFloat = 0.015
        
        let LAB1 = self.LAB
        let L_1 = LAB1[0], a_1 = LAB1[1], b_1 = LAB1[2]
        
        let LAB2 = compareColor.LAB
        let L_2 = LAB2[0], a_2 = LAB2[1], b_2 = LAB2[2]
        
        let deltaL:CGFloat = L_1 - L_2
        let deltaA:CGFloat = a_1 - a_2
        let deltaB:CGFloat = b_1 - b_2
        
        let C_1:CGFloat = sqrt(pow(a_1, 2) + pow(b_1, 2))
        let C_2:CGFloat = sqrt(pow(a_2, 2) + pow(b_2, 2))
        let deltaC_ab:CGFloat = C_1 - C_2
        
        let deltaH_ab:CGFloat = sqrt(pow(deltaA, 2) + pow(deltaB, 2) - pow(deltaC_ab, 2))
        
        let s_L:CGFloat = 1
        let s_C:CGFloat = 1 + (k_1 * C_1)
        let s_H:CGFloat = 1 + (k_2 * C_1)
        
        // Calculate
        
        let P1:CGFloat = pow(deltaL/(k_L * s_L), 2)
        let P2:CGFloat = pow(deltaC_ab/(k_C * s_C), 2)
        let P3:CGFloat = pow(deltaH_ab/(k_H * s_H), 2)
        
        return sqrt((isnan(P1) ? 0:P1) + (isnan(P2) ? 0:P2) + (isnan(P3) ? 0:P3))
    }
    
    /**
        Determine the contrast ratio between two colors. 
        A low ratio implies there is a smaller contrast between the two colors.
        A higher ratio implies there is a larger contrast between the two colors.
    
        - parameter compareColor: A Sweetercolor to compare.
    
        - returns: A CGFloat representing the contrast ratio of the two colors.
    */
    func contrastRatio(compareColor: Sweetercolor) -> CGFloat {
        // http://www.w3.org/WAI/GL/WCAG20-TECHS/G18.html
        
        let L1 = self.luminance
        let L2 = compareColor.luminance
        
        if L1 < L2 {
            return (L2 + 0.05)/(L1 + 0.05)
        } else {
            return (L1 + 0.05)/(L2 + 0.05)
        }
    }
    
    /**
        Determine if two colors are contrasting or not based on the W3 standard.
    
        - parameter compareColor:    A Sweetercolor to compare.
        - parameter strict:          A boolean, if true a stricter judgment of contrast ration will be used. Optional. Default: false
        
        - returns: a boolean, true of the two colors are contrasting, false otherwise.
    */
    func isContrastingColor(compareColor: Sweetercolor, strict: Bool = false) -> Bool {
        // http://www.w3.org/TR/2008/REC-WCAG20-20081211/#visual-audio-contrast-contrast
        
        let ratio = self.contrastRatio(compareColor)
        return strict ? (7 <= ratio) : (4.5 < ratio)
    }
    
    /**
        Get either black or white to contrast against a color.
        
        - returns: A Sweetercolor, either black or white to contrast against this color.
    */
    var fullContrastColor: Sweetercolor {
        let RGBA = self.RGBA
        let delta = (0.299*RGBA[0]) + (0.587*RGBA[1]) + (0.114*RGBA[2])

        return 0.5 < delta ? Sweetercolor.black() : Sweetercolor.white()
    }
    
    /**
        Get a clone of this color with a different alpha value.
    
        - parameter newAlpha: The opacity of the new color, value from [0, 1]
    
        - returns: A Sweetercolor clone with the new alpha.
    */
    func setAlpha(newAlpha: CGFloat) -> Sweetercolor {
        let RGB = self.RGBA
        return Sweetercolor(red: RGB[0], green: RGB[1], blue: RGB[2], alpha: newAlpha)
    }

    /**
        Get a new color if a black overlay was applied.
        
        - returns: A Sweetercolor with a black overlay.
    */
    var overlayBlack: Sweetercolor {
        return self.overlay(Sweetercolor.black())
    }
    
    /**
        Get a new color if a white overlay was applied.
    
        - returns: A Sweetercolor with a white overlay.
    */
    var overlayWhite: Sweetercolor {
        return self.overlay(Sweetercolor.white())
    }
    
    /**
        Get a new color with a mask overlay blend mode on top of this color.
        This is similar to Photoshop's overlay blend mode.
    
        - parameter mask: A Sweetercolor to apply as an overlay mask on top.
    
        - returns: A Sweetercolor with the applied overlay.
    */
    func overlay(mask: Sweetercolor) -> Sweetercolor {
        let mainRGBA = self.RGBA
        let maskRGBA = mask.RGBA
        
        func masker(a: CGFloat, b: CGFloat) -> CGFloat {
            if a < 0.5 {
                return 2 * a * b
            } else {
                return 1-(2*(1-a)*(1-b))
            }
        }
        
        return Sweetercolor(
            red: masker(mainRGBA[0], b: maskRGBA[0]),
            green: masker(mainRGBA[1], b: maskRGBA[1]),
            blue: masker(mainRGBA[2], b: maskRGBA[2]),
            alpha: masker(mainRGBA[3], b: maskRGBA[3])
        )
    }
    
    /**
        Get a new color with a mask multiply blend mode on top of this color.
        This is similar to Photoshop's multiply blend mode.
    
        - parameter mask: A Sweetercolor to apply as a multiply mask on top.
    
        - returns: A Sweetercolor with the applied multiply blend mode.
    */
    func multiply(mask: Sweetercolor) -> Sweetercolor {
        let mainRGBA = self.RGBA
        let maskRGBA = mask.RGBA
        
        return Sweetercolor(
            red: mainRGBA[0] * maskRGBA[0],
            green: mainRGBA[1] * maskRGBA[1],
            blue: mainRGBA[2] * maskRGBA[2],
            alpha: mainRGBA[3] * maskRGBA[3]
        )
    }

    /**
        Get a new color with a mask screen blend mode on top of this color.
        This is similar to Photoshop's screen blend mode.
    
        - parameter mask: A Sweetercolor to apply as a screen mask on top.
    
        - returns: A Sweetercolor with the applied screen blend mode.
    */
    func screen(mask: Sweetercolor) -> Sweetercolor {
        let mainRGBA = self.RGBA
        let maskRGBA = mask.RGBA
        
        func masker(a: CGFloat, b: CGFloat) -> CGFloat {
            return 1-((1-a)*(1-b))
        }
        
        return Sweetercolor(
            red: masker(mainRGBA[0], b: maskRGBA[0]),
            green: masker(mainRGBA[1], b: maskRGBA[1]),
            blue: masker(mainRGBA[2], b: maskRGBA[2]),
            alpha: masker(mainRGBA[3], b: maskRGBA[3])
        )
    }
    
    private func harmony(hueIncrement: CGFloat) -> Sweetercolor {
        // http://www.tigercolor.com/color-lab/color-theory/color-harmonies.htm
        
        let HSBA = self.HSBA
        let newHue = abs((HSBA[0] + (hueIncrement/360)) % 360)
        
        return Sweetercolor(hue: newHue, saturation: HSBA[1], brightness: HSBA[2], alpha: HSBA[3])
    }
    
    /**
        Get the complement of this color on the hue wheel.
    
        - returns: A complement Sweetercolor.
    */
    var complement: Sweetercolor {
        return self.harmony(180)
    }
    
    /**
        Get the split complements of this color on the hue wheel.
    
        - returns: An array of two complement Sweetercolors.
    */
    var splitcomplement: [Sweetercolor] {
        return [self.harmony(150), self.harmony(-150)]
    }
    
    /**
        Get the analogous colors of this color on the hue wheel.
    
        - returns: An array of two analogous Sweetercolors.
    */
    var analogous: [Sweetercolor] {
        return [self.harmony(30), self.harmony(-30)]
    }
    
    /**
        Get the triad colors of this color on the hue wheel.
    
        - returns: An array of two triad Sweetercolors.
    */
    var triad: [Sweetercolor] {
        return [self.harmony(120), self.harmony(-120)]
    }
    
}
