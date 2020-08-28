# NsfwImgDetector

[![CI Status](https://camo.githubusercontent.com/89ac45c2111c5e2d66bd4de6fdcd0d509e9d19f1/68747470733a2f2f696d672e736869656c64732e696f2f7472617669732f52615f48756c6d696e2f4e736677496d674465746563746f722e7376673f7374796c653d666c6174)](https://travis-ci.org/Ra_Hulmin/NsfwImgDetector) [![Version](https://camo.githubusercontent.com/179cf8c7db6a3a0c09442b6ef760d531459848b0/68747470733a2f2f696d672e736869656c64732e696f2f636f636f61706f64732f762f4e736677496d674465746563746f722e7376673f7374796c653d666c6174)](https://cocoapods.org/pods/NsfwImgDetector) [![License](https://camo.githubusercontent.com/175030429bb5ed3e0a3040285b403f264ec2c14f/68747470733a2f2f696d672e736869656c64732e696f2f636f636f61706f64732f6c2f4e736677496d674465746563746f722e7376673f7374796c653d666c6174)](https://cocoapods.org/pods/NsfwImgDetector) [![Platform](https://camo.githubusercontent.com/0e5dc4cea971bad5b29bbaa21a02c4a33c2ce066/68747470733a2f2f696d672e736869656c64732e696f2f636f636f61706f64732f702f4e736677496d674465746563746f722e7376673f7374796c653d666c6174)](https://cocoapods.org/pods/NsfwImgDetector)



NsfwDetector CoreML Model to scan images for nudity. It was convert fome coffe model of  [yahoo model](https://github.com/yahoo/open_nsfw).


### 如果pod报错无法加载mlmodel, 直接拉取NsfwImgDetector文件夹到项目中即可使用 (仅包含swift和mlmodel两个文件)


---

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

swift 5.0



## Usage

```swift
@available(iOS 11.0, *)
func filter(image:UIImage) {
    
    let detector = NsfwImgDetector()

    detector.check(image: image) { (isNoSafe, confidence) in
        print("isNoSafe:\(isNoSafe) confidence:\(confidence)")
        if isNoSafe == false {
            //safe
        }else if (confidence > 0.9) {
            // porn
        }else if (confidence > 0.5) {
            // sexy picture, may little porn
        }else {
            // sexy picture
        }
    }
}
```



## Installation

NsfwImgDetector is available through [CocoaPods](https://cocoapods.org/). To install it, simply add the following line to your Podfile:

```ruby
pod 'NsfwImgDetector'
```

## Author

[zhulmin1458@gmail.com](mailto:zhulmin1458@gmail.com)

## License

NsfwImgDetector is available under the BCD license. See the LICENSE file for more info.

