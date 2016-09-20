<p align="center">
![AudioIndicatorBars](Images/logo.png)
<p>

<p align="center">
**Audio Indicator Bars** for **iOS** and **tvOS**
<p>

<p align="center">
Indicates for your app users which audio is playing. Just like the Podcasts app.
<p>

<p align="center">
	[![Platform](https://img.shields.io/badge/platform-iOS%20|%20tvOS-orange.svg)](https://github.com/LeonardoCardoso/AudioIndicatorBars#requirements-and-details)
	[![CocoaPods](https://img.shields.io/badge/pod-v0.0.1-red.svg)](https://github.com/LeonardoCardoso/AudioIndicatorBars#cocoapods)
	[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/LeonardoCardoso/AudioIndicatorBars#carthage)
	[![Build Status](https://travis-ci.org/LeonardoCardoso/AudioIndicatorBars.svg?branch=master)](https://travis-ci.org/LeonardoCardoso/AudioIndicatorBars)
<p>
<p>


#### Index 

- [Requirements and Details](#requirements-and-details)
- [Installation](#installation)
      * [CocoaPods](#cocoapods)
      * [Carthage](#carthage)
      * [Manually](#manually)
- [Usage](#usage)
      * [Instatiating](#instatiating)
        + [Programmatically](#programmatically)
        + [Interface Builder](#interface-builder)
      * [Actions](#actions)
        + [Start](#start)
        + [Stop](#stop)
- [Information and Contact](#information-and-contact)
- [License](#license)

<hr />

## Requirements and Details

* iOS 9.0+ / tvOS 9.0+
* Xcode 8.0+
* Built with Swift 3.0

## Installation

### CocoaPods

To use **AudioIndicatorBars** as a pod package just add the following in your **Podfile** file.

```ruby
	source 'https://github.com/CocoaPods/Specs.git'
	platform :ios, '9.0'
	
	target 'Your Target Name' do
	  	use_frameworks!
	  	// ...
	  	pod 'AudioIndicatorBars', '~> 0.0.1'
	  	// ...
	end
```

### Carthage

To use **AudioIndicatorBars** as a Carthage module package just add the following in your **Cartfile** file.

```ruby
  	// ...
	github "LeonardoCardoso/AudioIndicatorBars" ~> 0.0.1
  	// ...
```

### Manually

You just need to drop AudioIndicatorBars folder into Xcode project (make sure to enable "Copy items if needed" and "Create groups").


## Usage

### Instatiating

#### Programmatically
```swift
let indicator: AudioIndicatorBarsView =
            AudioIndicatorBarsView(
                rect: CGRect,
                barsCount: Int,
                cornerRadius: CGFloat,
                color: UIColor
        )
```

#### Interface Builder

| Indentity Inspector | Atributes Inspector | Result |
|:-:|:-:|:-:|
| ![IB1.png](Images/IB1.png) | ![IB2.png](Images/IB2.png) | ![example1.gif](Images/example1.gif) |

This GIF is not as smooth as it really is though 😀. You can check the videos in [Images](Images) folder.

Here are some possibilities.

![example2.gif](Images/example2.gif)


### Actions

#### Start
```swift
indicator.start()
```

#### Stop
```swift
indicator.stop()
```


## Information and Contact

Developed by [@LeonardoCardoso](https://github.com/LeonardoCardoso). 

Contact me either by Twitter [@leocardz](https://twitter.com/leocardz) or emailing me to [contact@leocardz.com](mailto:contact@leocardz.com).


## License

    The MIT License (MIT)

	Copyright (c) 2016 Leonardo Cardoso
	
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