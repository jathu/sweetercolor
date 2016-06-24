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

The [license](https://github.com/jathu/sweetercolor/blob/master/LICENSE) is provided in the project folder.

## Logo

The logo and name is based off of [Sweeterman by Ramriddlz](https://soundcloud.com/ramriddlz/sweeter-man). The original logo is based on the Chiquita logo.

------
August 2015 - Toronto
