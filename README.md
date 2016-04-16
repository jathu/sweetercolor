![Sweetercolor](Images/Banner.png)

# Sweetercolor

A color extension library for Swift.*

*It has Photoshop style color blending!

## Example

``` Swift
// Example of hex initializer
let sun = UIColor(hex: 0xFBF002)
// Example of RGB 0-255 initializer
let pink = UIColor(r: 243, g: 137, b: 185)

let container = UIView(frame: CGRectMake(0, 0, 888, 250))
container.backgroundColor = pink

let label = UILabel(frame: container.frame)
label.text = "Sweet"
label.textColor = sun

// Example of overlay similar to Photoshop with reduced alpha
label.layer.shadowColor = pink.overlayBlack.withAlpha(0.6).CGColor
```
![Example Preview](Images/preview.png)

## Documentation

Each method is documented using headerdocs. This is just an overview.

### Initialization

- UIColor(hex: Int, alpha: CGFloat = 1)
- UIColor(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1)
- UIColor(h: CGFloat, s: CGFloat, b: CGFloat, a: CGFloat = 1)

## Variables & Methods

| Variable/Method | Description | Return Type |
|--------|-------------| -------|
| **RGBA** | Get the red, green, blue and alpha values. (0-1) | [CGFloat] |
| **RGBA_8Bit** | Get the 8 bit red, green, blue and alpha values. (0-255) | [CGFloat] |
| **HSBA** | Get the hue, saturation, brightness and alpha values. (0-1) | [CGFloat] |
| **HSBA_8Bit** | Get the 8 bit hue, saturation, brightness and alpha values. (0-255) | [CGFloat] |
| **XYZ** | Get the CIE XYZ values. | [CGFloat] |
| **LAB** | Get the CIE L*ab values. | [CGFloat] |
| **luminance** | Get the relative luminosity value of the color. This follows the W3 specs of luminosity to give weight to colors which humans perceive more of. | CGFloat |
| **isDarkColor** | Determine if the color is dark based on the relative luminosity of the color. | Bool |
| **isLightColor** | Determine if the color is light based on the relative luminosity of the color. | Bool |
| **isDarkerThan(compareColor: UIColor)** | Determine if this colors is darker than the compared color based on the relative luminosity of both colors. | Bool |
| **isLighterThan(compareColor: UIColor)** | Determine if this colors is lighter than the compared color based on the relative luminosity of both colors. | Bool |
| **isBlackOrWhite** | Determine if this color is either black or white. | Bool |
| **CIEDE2000(compareColor: UIColor)** | Detemine the distance between two colors based on the way humans perceive them. Uses the [Sharma 2004](http://www.ece.rochester.edu/~gsharma/ciede2000/ciede2000noteCRNA.pdf) alteration of the CIEDE2000 algorithm. | CGFloat |
| **CIE94(compareColor: UIColor)** | Detemine the distance between two colors based on the way humans perceive them. Uses the CIE94 algorithm. |  CGFloat |
| **contrastRatio(compareColor: UIColor)** | Determine the contrast ratio between two colors. A low ratio implies there is a smaller contrast between the two colors. A higher ratio implies there is a larger contrast between the two colors. |  CGFloat |
| **isContrastingColor(compareColor: UIColor, strict: Bool = false)** | Determine if two colors are contrasting or not based on the W3 standard. | Bool |
| **fullContrastColor** | Get either black or white to contrast against a color. | UIColor |
| **withAlpha(newAlpha: CGFloat)** | Get a clone of this color with a different alpha value. | UIColor |
| **overlay(mask: UIColor)** | Get a new color with a mask overlay blend mode on top of this color. This is similar to Photoshop's overlay blend mode. | UIColor |
| **overlayBlack** | Get a new color if a black overlay was applied. | UIColor |
| **overlayWhite** | Get a new color if a white overlay was applied. | UIColor |
| **multiply(mask: UIColor)** | Get a new color with a mask multiply blend mode on top of this color. This is similar to Photoshop's multiply blend mode. | UIColor |
| **screen(mask: UIColor)** | Get a new color with a mask screen blend mode on top of this color. This is similar to Photoshop's screen blend mode. | UIColor |
| **complement** | Get the complement of this color on the hue wheel. | UIColor |
| **splitComplement** | Get the split complements of this color on the hue wheel. | [UIColor] |
| **analogous** | Get the analogous colors of this color on the hue wheel. | [UIColor] |
| **triad** | Get the triad colors of this color on the hue wheel. | [UIColor] |

## License

MIT License

Copyright (c) 2015 Jathu Satkunarajah

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Logo

The logo and name is based off of [Sweeterman by Ramriddlz](https://soundcloud.com/ramriddlz/sweeter-man). The original logo is based on the Chiquita logo.

------
August 2015 - Toronto
