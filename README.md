# CCWATextField
You can improve the design and performance of your app by using CCWATextField. In the iOS app, you can see how many CCWATextField properties you can customize in your own way. 

<h3 align="center">                 
<img src="https://user-images.githubusercontent.com/52282676/96968419-96589a00-152e-11eb-9f7c-e866f1b847d8.gif" height="400">         
<img src="https://user-images.githubusercontent.com/52282676/96968334-7cb75280-152e-11eb-8d91-c70bb333c712.gif" height="400">
</h3>

###### Click to Download Example 👇🏻
## [Download Example](https://github.com/AnandKhanpara/CCWATextField/files/5432725/CCWATextFieldExample.zip)


### Installation with CocoaPods

```
pod 'CCWATextField', '1.0.1'
```

## Usage

### Storyboard


![CCWATextField](https://user-images.githubusercontent.com/52282676/96963037-91dbb380-1525-11eb-801a-2c06c298ba21.png)

```swift

import CCWATextField

class ViewController: UIViewController {
    
    @IBOutlet weak var ccwaTextField:CCWATextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ccwaTextField.fieldType = .textField //(Default)
        //ccwaTextField.fieldType = .dropDown
        //ccwaTextField.fieldType = .dropDownSearch
        
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
        
        ccwaTextField.fieldType = .textField //(Default)
        //ccwaTextField.fieldType = .dropDown
        //ccwaTextField.fieldType = .dropDownSearch
        
        view.addSubview(ccwaTextField)
        
    }
}

```

### Action 

#### This way you can direct using four actions.

###### Text-Field 

1. editingDidBegin
2. editingChanged
3. editingDidEnd
4. touchUpInsideClear

###### Drop-Down 

1. dropDownDidSelectRow

###### Drop-Down-Search

1. dropDownDidSelectRow
2. dropDownSearchEditingChanged

```swift 

//Text-Field

ccwaTextField.editingDidBegin { (text) in
     
}.editingChanged { (text) in
     
}.editingDidEnd { (text) in
    
}.touchUpInsideClear {
     
}

//Drop-Down

ccwaTextField.dropDownDidSelectRow = { ccwaTextField, index, value in

}

//Drop-Down-Search

ccwaTextField.dropDownDidSelectRow = { ccwaTextField, index, value in

}

ccwaTextField.dropDownSearchEditingChanged = { ccwaTextField, arrCCWADropDownModel, search in
    let arrCCWADropDownModel = arrCCWADropDownModel.filter({ $0.title?.localizedCaseInsensitiveContains(search) == true })
    return arrCCWADropDownModel
}

```

### Properties

#### Default value of a properties

#### * It is not mandatory to set the value of any properties. You can set the value as per your requirement.

![CCWATextField](https://user-images.githubusercontent.com/52282676/97079520-320f0680-1612-11eb-8bee-764c1a1a3cc7.png)

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

ccwaTextField.dropDownBackGroundColor = .white
ccwaTextField.dropDownSeperatorLineColor = .lightGray
ccwaTextField.dropDownBorderColor = .lightGray
ccwaTextField.dropDownBorderWidth = 0.5
ccwaTextField.dropDownCornerRadius = 5
ccwaTextField.dropDownShadowColor = .darkGray
ccwaTextField.dropDownShadowRadius = 4
ccwaTextField.dropDownShadowOpacity = 0.5
ccwaTextField.dropDownShadowOffset = CGSize(width: 0, height: 2)
ccwaTextField.dropDownTitleColor = .black
ccwaTextField.dropDownSubtitleColor = .lightGray
ccwaTextField.dropDownTitleFontName = ""
ccwaTextField.dropDownSubtitleFontName = ""
ccwaTextField.dropDownSearchPlaceholder = ""
ccwaTextField.dropDownNoDataMessage = ""
ccwaTextField.dropDownArrowImage = nil

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
    ccwaDropDownViewMaster.dropDownSearchPlaceholder = ""
    ccwaDropDownViewMaster.dropDownNoDataMessage = ""
    ccwaDropDownViewMaster.dropDownArrowImage = nil
    
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

