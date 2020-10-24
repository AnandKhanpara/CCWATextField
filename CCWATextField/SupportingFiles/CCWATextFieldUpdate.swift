/*
 Created by Anand M. Khanpara (Create Code With Anand)
 Copyright © 2020 CreateCodeWithAnand. All rights reserved.
 
 MIT License

 Copyright (c) 2020 Anand M. Khanpara (Create Code With Anand)

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
 */

import UIKit

extension CCWATextField: CCWATextFieldDelegate {
    
    public func updating() {
        setText = text
    }
    
    public func update() {
        
        if master == false {
            setTextColor = textColor
        }else {
            setTextColor = masterValue.textColor
        }
        
        setPlaceholder = placeholder
        
        if master == false {
            setAnimatePlaceholder = animatePlaceholder
        }else {
            setAnimatePlaceholder = masterValue.animatePlaceholder
        }
        
        if master == false {
            setActivePlaceholderColor = activePlaceholderColor
        }else {
            setActivePlaceholderColor = masterValue.activePlaceholderColor
        }
        
        if master == false {
            setDeactivePlaceholderColor = deactivePlaceholderColor
        }else {
            setDeactivePlaceholderColor = masterValue.deactivePlaceholderColor
        }
        
        if master == false {
            setActivePlacehoderBackGroundColor = activePlacehoderBackGroundColor
        }else {
            setActivePlacehoderBackGroundColor = masterValue.activePlacehoderBackGroundColor
        }
        
        if master == false {
            setActiveBorderColor = activeBorderColor
        }else {
            setActiveBorderColor = masterValue.activeBorderColor
        }
        
        if master == false {
            setDeactiveBorderColor = deactiveBorderColor
        }else {
            setDeactiveBorderColor = masterValue.deactiveBorderColor
        }
        
        if master == false {
            setActiveBorderWidth = activeBorderWidth
        }else {
            setActiveBorderWidth = masterValue.activeBorderWidth
        }
        
        if master == false {
            setDeactiveBorderWidth = deactiveBorderWidth
        }else {
            setDeactiveBorderWidth = masterValue.deactiveBorderWidth
        }
        
        if master == false {
            setActiveCornerRadius = activeCornerRadius
        }else {
            setActiveCornerRadius = masterValue.activeCornerRadius
        }
        
        if master == false {
            setDeactiveCornerRadius = deactiveCornerRadius
        }else {
            setDeactiveCornerRadius = masterValue.deactiveCornerRadius
        }
        
        if master == false {
            setActiveBackGroundColor = activeBackGroundColor
        }else {
            setActiveBackGroundColor = masterValue.activeBackGroundColor
        }
        
        if master == false {
            setDeactiveBackGroundColor = deactiveBackGroundColor
        }else {
            setDeactiveBackGroundColor = masterValue.deactiveBackGroundColor
        }
        
        if master == false {
            setFontSize = fontSize
        }else {
            setFontSize = masterValue.fontSize
        }
        
        if master == false {
            setFontName = fontName
        }else {
            setFontName = masterValue.fontName
        }
        
        if master == false {
            setActiveImageLeftIcon = activeImageLeftIcon
        }else {
            setActiveImageLeftIcon = masterValue.activeImageLeftIcon
        }
        
        if master == false {
            setDeactiveImageLeftIcon = deactiveImageLeftIcon
        }else {
            setDeactiveImageLeftIcon = masterValue.deactiveImageLeftIcon
        }
        
        if master == false {
            setActiveImageLeftIconColor = activeImageLeftIconColor
        }else {
            setActiveImageLeftIconColor = masterValue.activeImageLeftIconColor
        }
        
        if master == false {
            setDeactiveImageLeftIconColor = deactiveImageLeftIconColor
        }else {
            setDeactiveImageLeftIconColor = masterValue.deactiveImageLeftIconColor
        }
        
        if master == false {
            setIsClearButton = isClearButton
        }else {
            setIsClearButton = masterValue.isClearButton
        }
        
        if master == false {
            setImageClearButton = imageClearButton
        }else {
            setImageClearButton = masterValue.imageClearButton
        }
        
        if master == false {
            setIsSecureText = isSecureText
        }else {
            setIsSecureText = masterValue.isSecureText
        }
        
        if master == false {
            setActiveShadowColor = activeShadowColor
        }else {
            setActiveShadowColor = masterValue.activeShadowColor
        }
        
        if master == false {
            setDeactiveShadowColor = deactiveShadowColor
        }else {
            setDeactiveShadowColor = masterValue.deactiveShadowColor
        }
        
        if master == false {
            setActiveShadowRadius = activeShadowRadius
        }else {
            setActiveShadowRadius = masterValue.activeShadowRadius
        }
        
        if master == false {
            setDeactiveShadowRadius = deactiveShadowRadius
        }else {
            setDeactiveShadowRadius = masterValue.deactiveShadowRadius
        }

        if master == false {
            setActiveShadowOpacity = activeShadowOpacity
        }else {
            setActiveShadowOpacity = masterValue.activeShadowOpacity
        }
        
        if master == false {
            setDeactiveShadowOpacity = deactiveShadowOpacity
        }else {
            setDeactiveShadowOpacity = masterValue.deactiveShadowOpacity
        }
        
        if master == false {
            setActiveShadowOffset = activeShadowOffset
        }else {
            setActiveShadowOffset = masterValue.activeShadowOffset
        }
        
        if master == false {
            setDeactiveShadowOffset = deactiveShadowOffset
        }else {
            setDeactiveShadowOffset = masterValue.deactiveShadowOffset
        }
        
        if master == false {
            setDoneToolbar = doneToolbar
        }else {
            setDoneToolbar = masterValue.doneToolbar
        }
        
        if master == true {
            if let tint = masterValue.tintColor {
                tintColor = tint
            }
        }

        if dropDownMaster == false {
            setDropDownBackGroundColor = dropDownBackGroundColor
        }else {
            setDropDownBackGroundColor = dropDownMasterValue.dropDownBackGroundColor
        }
        
        if dropDownMaster == false {
            setDropDownSeperatorLineColor = dropDownSeperatorLineColor
        }else {
            setDropDownSeperatorLineColor = dropDownMasterValue.dropDownSeperatorLineColor
        }
        
        if dropDownMaster == false {
            setDropDownBorderColor = dropDownBorderColor
        }else {
            setDropDownBorderColor = dropDownMasterValue.dropDownBorderColor
        }
        
        if dropDownMaster == false {
            setDropDownBorderWidth = dropDownBorderWidth
        }else {
            setDropDownBorderWidth = dropDownMasterValue.dropDownBorderWidth
        }
        
        if dropDownMaster == false {
            setDropDownCornerRadius = dropDownCornerRadius
        }else {
            setDropDownCornerRadius = dropDownMasterValue.dropDownCornerRadius
        }
        
        if dropDownMaster == false {
            setDropDownShadowColor = dropDownShadowColor
        }else {
            setDropDownShadowColor = dropDownMasterValue.dropDownShadowColor
        }
        
        if dropDownMaster == false {
            setDropDownShadowRadius = dropDownShadowRadius
        }else {
            setDropDownShadowRadius = dropDownMasterValue.dropDownShadowRadius
        }
        
        if dropDownMaster == false {
            setDropDownShadowOpacity = dropDownShadowOpacity
        }else {
            setDropDownShadowOpacity = dropDownMasterValue.dropDownShadowOpacity
        }
        
        if dropDownMaster == false {
            setDropDownShadowOffset = dropDownShadowOffset
        }else {
            setDropDownShadowOffset = dropDownMasterValue.dropDownShadowOffset
        }
        
        if dropDownMaster == false {
            setDropDownTitleColor = dropDownTitleColor
        }else {
            setDropDownTitleColor = dropDownMasterValue.dropDownTitleColor
        }
        
        if dropDownMaster == false {
            setDropDownSubtitleColor = dropDownSubtitleColor
        }else {
            setDropDownSubtitleColor = dropDownMasterValue.dropDownSubtitleColor
        }
        
        if dropDownMaster == false {
            setDropDownTitleFontName = dropDownTitleFontName
        }else {
            setDropDownTitleFontName = dropDownMasterValue.dropDownTitleFontName
        }
        
        if dropDownMaster == false {
            setDropDownSubtitleFontName = dropDownSubtitleFontName
        }else {
            setDropDownSubtitleFontName = dropDownMasterValue.dropDownSubtitleFontName
        }
        
        if dropDownMaster == false {
            setDropDownSearchPlaceholder = dropDownSearchPlaceholder
        }else {
            setDropDownSearchPlaceholder = dropDownMasterValue.dropDownSearchPlaceholder
        }
        
        if dropDownMaster == false {
            setDropDownNoDataMessage = dropDownNoDataMessage
        }else {
            setDropDownNoDataMessage = dropDownMasterValue.dropDownNoDataMessage
        }
        
        if dropDownMaster == false {
            setDropDownArrowImage = dropDownArrowImage
        }else {
            setDropDownArrowImage = dropDownMasterValue.dropDownArrowImage
        }
        
        
        setFieldType = fieldType
        
        ccwaTextField = self
        
        setArrCCWADropDownModel = arrCCWADropDownModel
        
        backgroundColor = .clear

    }
    
    public func continueUpdate() {
        text = field.text
    }
}


extension CCWATextField {
    
    @discardableResult
    public func editingChanged(text: @escaping (String) -> ()) -> CCWATextField {
        textFieldInput.editingChanged = text
        return self
    }
    
    @discardableResult
    public func editingDidBegin(text: @escaping (String) -> ()) -> CCWATextField {
        textFieldInput.editingDidBegin = text
        return self
    }
    
    @discardableResult
    public func editingDidEnd(text: @escaping (String) -> ()) -> CCWATextField {
        textFieldInput.editingDidEnd = text
        return self
    }
    
    @discardableResult
    public func touchUpInsideClear(touch: @escaping () -> ()) -> CCWATextField {
        buttonClearText.touchUpInside = touch
        return self
    }
}
