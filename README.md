![Sweetercolor](Images/Banner.png)

# Sweetercolor

A color extension library for Swift.*

*It has Photoshop style color blending!

## Example

``` Swift
// Example of hex initializer
let sun = UIColor(hex: "#FBF002")
// Example of RGB 0-255 initializer
let pink = UIColor(r: 241, g: 139, b: 185)

let container = UIView(frame: CGRect(x: 0, y: 0, width: 888, height: 250))
container.backgroundColor = pink

let label = UILabel(frame: container.frame)
label.text = "Sweet"
label.textColor = sun

// Example of overlay similar to Photoshop with reduced alpha
// This allows us to get a more natural ambient shadow
label.layer.shadowColor = pink.overlayBlack.with(alpha: 0.6).cgColor
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
