# CCWATextField
You can improve the design and performance of your app by using CCWATextField. In the iOS app, you can see how many CCWATextField properties you can customize in your own way. 

![CCWATextField](https://user-images.githubusercontent.com/52282676/89509432-ef951500-d7ec-11ea-9fe1-a7ec5a2b21b6.gif)


## [Download Example](https://github.com/AnandKhanpara/CCWATextField/files/5033717/CCWATextFieldExample.zip)

### Installation with CocoaPods

```
pod 'CCWATextField', '0.0.2'
```

## Usage

### Storyboard


![CCWATextField](https://user-images.githubusercontent.com/52282676/89497410-ed758b00-d7d9-11ea-9460-cdf4574aa537.png)

```swift
import CCWATextField

class ViewController: UIViewController {
    
    @IBOutlet weak var ccwaOutlineTextField:CCWAOutlineTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

```

### Programmatically

```swift
import CCWATextField

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ccwaOutlineTextField = CCWAOutlineTextField()
        view.addSubview(ccwaOutlineTextField)
        
    }
}

```

### Action 

#### This way you can direct using three actions.

1. editingDidBegin
2. editingChanged
3. editingDidEnd

```swift 
ccwaOutlineTextField.editingDidBegin { (text) in

}.editingChanged { (text) in

}.editingDidEnd { (text) in

}
```

### Properties

#### Default value of a properties

#### It is not mandatory to set the value of any properties. You can set the value as per your requirement.

![CCWATextField](https://user-images.githubusercontent.com/52282676/89496090-51e31b00-d7d7-11ea-80e0-fb9f9d33e71e.png)

``` swift
let ccwaOutlineTextField = CCWAOutlineTextField()
ccwaOutlineTextField.text = ""
ccwaOutlineTextField.textColor = .black
ccwaOutlineTextField.placeholder = ""
ccwaOutlineTextField.animatePlaceholder = false
ccwaOutlineTextField.activePlaceholderColor = nil
ccwaOutlineTextField.deactivePlaceholderColor = .lightGray
ccwaOutlineTextField.activePlacehoderBackGroundColor = .white
ccwaOutlineTextField.activeBorderColor = nil
ccwaOutlineTextField.deactiveBorderColor = .darkGray
ccwaOutlineTextField.activeBorderWidth = 0
ccwaOutlineTextField.deactiveBorderWidth = 1
ccwaOutlineTextField.activeCornerRadius = 0
ccwaOutlineTextField.deactiveCornerRadius = 5
ccwaOutlineTextField.activeBackGroundColor = nil
ccwaOutlineTextField.deactiveBackGroundColor = .white
ccwaOutlineTextField.fontSize = 16
ccwaOutlineTextField.fontName = ""
ccwaOutlineTextField.activeImageLeftIcon = nil
ccwaOutlineTextField.deactiveImageLeftIcon = nil
ccwaOutlineTextField.activeImageLeftIconColor = nil
ccwaOutlineTextField.deactiveImageLeftIconColor = nil
ccwaOutlineTextField.isClearButton = true
ccwaOutlineTextField.imageClearButton = nil
ccwaOutlineTextField.isSecureText = false
ccwaOutlineTextField.activeShadowColor = nil
ccwaOutlineTextField.deactiveShadowColor = .clear
ccwaOutlineTextField.activeShadowRadius = 0
ccwaOutlineTextField.deactiveShadowRadius = 0
ccwaOutlineTextField.activeShadowOpacity = 0
ccwaOutlineTextField.deactiveShadowOpacity = 1
ccwaOutlineTextField.activeShadowOffset = .zero
ccwaOutlineTextField.deactiveShadowOffset = .zero
ccwaOutlineTextField.doneToolbar = true

```
##### You can change the cursor color of CCWATextField and the color of toolbar Done with tintColor.

![CCWATextField](https://user-images.githubusercontent.com/52282676/89501731-7a701280-d7e1-11ea-80a2-3ea57a7815eb.png)

```swift
ccwaOutlineTextField.tintColor = .link

```

## Requirements

- iOS 11.0
- Xcode 11
- Swift 5.0


## Author

* [Anand Khanpara](https://www.linkedin.com/in/anand-khanpara-212a96125)

## Contact
[![anandkhanparalinked](https://user-images.githubusercontent.com/52282676/89515544-e60fab00-d7f4-11ea-8872-c9414658a8d1.png)
](https://www.linkedin.com/in/anand-khanpara-212a96125) [![anandkhanparalinked](https://user-images.githubusercontent.com/52282676/89516338-f1afa180-d7f5-11ea-9e33-6954f7c60076.png)
](https://www.youtube.com/channel/UCuONhSZPQNmitGaOVZ7kQmg/videos?view=0&sort=da&flow=grid) 



CCWATextField is released under the MIT license. See [LICENSE](https://github.com/AnandKhanpara/CCWATextField/blob/master/LICENSE) for details.

