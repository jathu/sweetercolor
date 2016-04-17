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
// This allows us to get a more natural ambient shadow
label.layer.shadowColor = pink.overlayBlack.withAlpha(0.6).CGColor
```
![Example Preview](Images/preview.png)

## Documentation

Each method is documented using headerdocs. An overview can be found here: [**jathu.me/sweetercolor**](http://jathu.me/sweetercolor/)

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
