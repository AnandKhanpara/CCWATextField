# CCWATextField
You can improve the design and performance of your app by using CCWATextField. In the iOS app, you can see how many CCWATextField properties you can customize in your own way. 

![CCWATextField](https://user-images.githubusercontent.com/52282676/89509432-ef951500-d7ec-11ea-9fe1-a7ec5a2b21b6.gif)


## [Download Example](https://github.com/AnandKhanpara/CCWATextField/files/5266911/CCWATextFieldExample.zip)


### Installation with CocoaPods

```
pod 'CCWATextField', '0.0.5'
```

## Usage

### Storyboard


![CCWATextField](https://user-images.githubusercontent.com/52282676/93991550-119d2380-fdaa-11ea-97ab-cb099e1ce376.png)

```swift

import CCWATextField

class ViewController: UIViewController {
    
    @IBOutlet weak var ccwaTextField:CCWATextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        ccwaTextField.fieldType = .dropDown // .textField (Default)
    }
}

```

### Programmatically

```swift
import CCWATextField

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ccwaTextField = CCWATextField()
        ccwaTextField.fieldType = .dropDown // .textField (Default)
        view.addSubview(ccwaTextField)
        
    }
}

```

### Action 

#### This way you can direct using four actions.

1. editingDidBegin
2. editingChanged
3. editingDidEnd
4. touchUpInsideClear

```swift 
ccwaTextField.editingDidBegin { (text) in
     
}.editingChanged { (text) in
     
}.editingDidEnd { (text) in
    
}.touchUpInsideClear {
     
}
```

### Properties

#### Default value of a properties

#### * It is not mandatory to set the value of any properties. You can set the value as per your requirement.

![CCWATextField](https://user-images.githubusercontent.com/52282676/89496090-51e31b00-d7d7-11ea-80e0-fb9f9d33e71e.png)

``` swift

let ccwaTextField = CCWATextField()

```

``` swift

ccwaTextField.fieldType = .dropDown // .textField (Default)

//MARK :- CCWATextField

ccwaTextField.text = ""
ccwaTextField.textColor = .black
ccwaTextField.placeholder = ""
ccwaTextField.animatePlaceholder = false
ccwaTextField.activePlaceholderColor = nil
ccwaTextField.deactivePlaceholderColor = .lightGray
ccwaTextField.activePlacehoderBackGroundColor = .white
ccwaTextField.activeBorderColor = nil
ccwaTextField.deactiveBorderColor = .darkGray
ccwaTextField.activeBorderWidth = 0
ccwaTextField.deactiveBorderWidth = 1
ccwaTextField.activeCornerRadius = 0
ccwaTextField.deactiveCornerRadius = 5
ccwaTextField.activeBackGroundColor = nil
ccwaTextField.deactiveBackGroundColor = .white
ccwaTextField.fontSize = 16
ccwaTextField.fontName = ""
ccwaTextField.activeImageLeftIcon = nil
ccwaTextField.deactiveImageLeftIcon = nil
ccwaTextField.activeImageLeftIconColor = nil
ccwaTextField.deactiveImageLeftIconColor = nil
ccwaTextField.isClearButton = true
ccwaTextField.imageClearButton = nil
ccwaTextField.isSecureText = false
ccwaTextField.activeShadowColor = nil
ccwaTextField.deactiveShadowColor = .clear
ccwaTextField.activeShadowRadius = 0
ccwaTextField.deactiveShadowRadius = 0
ccwaTextField.activeShadowOpacity = 0
ccwaTextField.deactiveShadowOpacity = 1
ccwaTextField.activeShadowOffset = .zero
ccwaTextField.deactiveShadowOffset = .zero
ccwaTextField.doneToolbar = true

             
//MARK:- CCWADropDown

ccwaTextField.setDropDownBackGroundColor = .white
ccwaTextField.setDropDownSeperatorLineColor = .lightGray
ccwaTextField.setDropDownBorderColor = .lightGray
ccwaTextField.setDropDownBorderWidth = 0.5
ccwaTextField.setDropDownCornerRadius = 5
ccwaTextField.setDropDownShadowColor = .darkGray
ccwaTextField.setDropDownShadowRadius = 4
ccwaTextField.setDropDownShadowOpacity = 0.5
ccwaTextField.setDropDownShadowOffset = CGSize(width: 0, height: 2)
ccwaTextField.setDropDownTitleColor = .black
ccwaTextField.setDropDownSubtitleColor = .lightGray
ccwaTextField.setDropDownTitleFontName = ""
ccwaTextField.setDropDownSubtitleFontName:String = ""

```
##### * You can change the cursor color of CCWATextField and the color of toolbar Done with tintColor.

```swift
ccwaTextField.tintColor = .link

```
##### * The Master-value of the CCWAOutlineTextField must be true to apply the MasterDesign.

```swift
ccwaTextField.master = true
ccwaTextField.masterValue = CCWATextFieldMaster()

ccwaTextField.dropDownMaster = false
ccwaTextField.dropDownMasterValue = CCWADropDownViewMaster()
```

##### * All CCWAOutlineTextField will design the same at active and dective times as you customize. If master is applied and property is not set. The default master apply will be like the image below. 

```swift

class func masterValue() -> CCWATextFieldMaster {
    //MARK:- Master Property of CCWATextFieldMaster

    //Note: The Master-value of the CCWATextField must be true to apply the TextField MasterDesign.

    let ccwaTextFieldMaster = CCWATextFieldMaster()
    ccwaTextFieldMaster.textColor = .black
    ccwaTextFieldMaster.animatePlaceholder = false
    ccwaTextFieldMaster.activePlaceholderColor = nil
    ccwaTextFieldMaster.deactivePlaceholderColor = .lightGray
    ccwaTextFieldMaster.activePlacehoderBackGroundColor = .white
    ccwaTextFieldMaster.activeBorderColor = nil
    ccwaTextFieldMaster.deactiveBorderColor = .darkGray
    ccwaTextFieldMaster.activeBorderWidth = 0
    ccwaTextFieldMaster.deactiveBorderWidth = 1
    ccwaTextFieldMaster.activeCornerRadius = 0
    ccwaTextFieldMaster.deactiveCornerRadius = 5
    ccwaTextFieldMaster.activeBackGroundColor = nil
    ccwaTextFieldMaster.deactiveBackGroundColor = .white
    ccwaTextFieldMaster.fontSize = 16
    ccwaTextFieldMaster.fontName = ""
    ccwaTextFieldMaster.activeImageLeftIcon = nil
    ccwaTextFieldMaster.deactiveImageLeftIcon = nil
    ccwaTextFieldMaster.activeImageLeftIconColor = nil
    ccwaTextFieldMaster.deactiveImageLeftIconColor = nil
    ccwaTextFieldMaster.isClearButton = true
    ccwaTextFieldMaster.imageClearButton = nil
    ccwaTextFieldMaster.isSecureText = false
    ccwaTextFieldMaster.activeShadowColor = nil
    ccwaTextFieldMaster.deactiveShadowColor = .clear
    ccwaTextFieldMaster.activeShadowRadius = 0
    ccwaTextFieldMaster.deactiveShadowRadius = 0
    ccwaTextFieldMaster.activeShadowOpacity = 0
    ccwaTextFieldMaster.deactiveShadowOpacity = 1
    ccwaTextFieldMaster.activeShadowOffset = .zero
    ccwaTextFieldMaster.deactiveShadowOffset = .zero
    ccwaTextFieldMaster.doneToolbar = true
    ccwaTextFieldMaster.tintColor = nil

    return ccwaTextFieldMaster
}



class func dropDownMasterValue() -> CCWADropDownViewMaster {

    //MARK:- Master Property of CCWADropDownViewMaster

    //Note: The Master-value of the CCWATextField must be true to apply the DropDown MasterDesign.

    let ccwaDropDownViewMaster = CCWADropDownViewMaster()
    ccwaDropDownViewMaster.dropDownBackGroundColor = .white
    ccwaDropDownViewMaster.dropDownSeperatorLineColor = .lightGray
    ccwaDropDownViewMaster.dropDownBorderColor = .lightGray
    ccwaDropDownViewMaster.dropDownBorderWidth = 0.5
    ccwaDropDownViewMaster.dropDownCornerRadius = 5
    ccwaDropDownViewMaster.dropDownShadowColor = .darkGray
    ccwaDropDownViewMaster.dropDownShadowRadius = 4
    ccwaDropDownViewMaster.dropDownShadowOpacity = 0.5
    ccwaDropDownViewMaster.dropDownShadowOffset = CGSize(width: 0, height: 2)
    ccwaDropDownViewMaster.dropDownTitleColor = .black
    ccwaDropDownViewMaster.dropDownSubtitleColor = .lightGray
    ccwaDropDownViewMaster.dropDownTitleFontName = ""
    ccwaDropDownViewMaster.dropDownSubtitleFontName = ""

    return ccwaDropDownViewMaster
}


```

## Requirements

- iOS 12.0
- Xcode 11
- Swift 5.0

## Available

- iPhone & iPad Development

## Author

* [Anand Khanpara](https://www.linkedin.com/in/anand-khanpara-212a96125)

## Contact
[![anandkhanparalinked](https://user-images.githubusercontent.com/52282676/89515544-e60fab00-d7f4-11ea-8872-c9414658a8d1.png)
](https://www.linkedin.com/in/anand-khanpara-212a96125) [![anandkhanparalinked](https://user-images.githubusercontent.com/52282676/89516338-f1afa180-d7f5-11ea-9e33-6954f7c60076.png)
](https://www.youtube.com/channel/UCuONhSZPQNmitGaOVZ7kQmg/videos?view=0&sort=da&flow=grid) 



CCWATextField is released under the MIT license. See [LICENSE](https://github.com/AnandKhanpara/CCWATextField/blob/master/LICENSE) for details.

