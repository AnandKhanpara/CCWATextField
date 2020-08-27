//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.


import Foundation
import UIKit

extension CCWAOutlineTextField: CCWATextFieldSetUpPropertyDelegate {
    
    public func updating() {
        setText = text
    }
    
    public func update() {
        
        if master == false {
            setTextColor = textColor
        }else {
            setTextColor = CCWAOutlineTextFieldMaster.textColor
        }
        
        setPlaceholder = placeholder
        
        if master == false {
            setAnimatePlaceholder = animatePlaceholder
        }else {
            setAnimatePlaceholder = CCWAOutlineTextFieldMaster.animatePlaceholder
        }
        
        if master == false {
            setActivePlaceholderColor = activePlaceholderColor
        }else {
            setActivePlaceholderColor = CCWAOutlineTextFieldMaster.activePlaceholderColor
        }
        
        if master == false {
            setDeactivePlaceholderColor = deactivePlaceholderColor
        }else {
            setDeactivePlaceholderColor = CCWAOutlineTextFieldMaster.deactivePlaceholderColor
        }
        
        if master == false {
            setActivePlacehoderBackGroundColor = activePlacehoderBackGroundColor
        }else {
            setActivePlacehoderBackGroundColor = CCWAOutlineTextFieldMaster.activePlacehoderBackGroundColor
        }
        
        if master == false {
            setActiveBorderColor = activeBorderColor
        }else {
            setActiveBorderColor = CCWAOutlineTextFieldMaster.activeBorderColor
        }
        
        if master == false {
            setDeactiveBorderColor = deactiveBorderColor
        }else {
            setDeactiveBorderColor = CCWAOutlineTextFieldMaster.deactiveBorderColor
        }
        
        if master == false {
            setActiveBorderWidth = activeBorderWidth
        }else {
            setActiveBorderWidth = CCWAOutlineTextFieldMaster.activeBorderWidth
        }
        
        if master == false {
            setDeactiveBorderWidth = deactiveBorderWidth
        }else {
            setDeactiveBorderWidth = CCWAOutlineTextFieldMaster.deactiveBorderWidth
        }
        
        if master == false {
            setActiveCornerRadius = activeCornerRadius
        }else {
            setActiveCornerRadius = CCWAOutlineTextFieldMaster.activeCornerRadius
        }
        
        if master == false {
            setDeactiveCornerRadius = deactiveCornerRadius
        }else {
            setDeactiveCornerRadius = CCWAOutlineTextFieldMaster.deactiveCornerRadius
        }
        
        if master == false {
            setActiveBackGroundColor = activeBackGroundColor
        }else {
            setActiveBackGroundColor = CCWAOutlineTextFieldMaster.activeBackGroundColor
        }
        
        if master == false {
            setDeactiveBackGroundColor = deactiveBackGroundColor
        }else {
            setDeactiveBackGroundColor = CCWAOutlineTextFieldMaster.deactiveBackGroundColor
        }
        
        if master == false {
            setFontSize = fontSize
        }else {
            setFontSize = CCWAOutlineTextFieldMaster.fontSize
        }
        
        if master == false {
            setFontName = fontName
        }else {
            setFontName = CCWAOutlineTextFieldMaster.fontName
        }
        
        if master == false {
            setActiveImageLeftIcon = activeImageLeftIcon
        }else {
            setActiveImageLeftIcon = CCWAOutlineTextFieldMaster.activeImageLeftIcon
        }
        
        if master == false {
            setDeactiveImageLeftIcon = deactiveImageLeftIcon
        }else {
            setDeactiveImageLeftIcon = CCWAOutlineTextFieldMaster.deactiveImageLeftIcon
        }
        
        if master == false {
            setActiveImageLeftIconColor = activeImageLeftIconColor
        }else {
            setActiveImageLeftIconColor = CCWAOutlineTextFieldMaster.activeImageLeftIconColor
        }
        
        if master == false {
            setDeactiveImageLeftIconColor = deactiveImageLeftIconColor
        }else {
            setDeactiveImageLeftIconColor = CCWAOutlineTextFieldMaster.deactiveImageLeftIconColor
        }
        
        if master == false {
            setIsClearButton = isClearButton
        }else {
            setIsClearButton = CCWAOutlineTextFieldMaster.isClearButton
        }
        
        if master == false {
            setImageClearButton = imageClearButton
        }else {
            setImageClearButton = CCWAOutlineTextFieldMaster.imageClearButton
        }
        
        if master == false {
            setIsSecureText = isSecureText
        }else {
            setIsSecureText = CCWAOutlineTextFieldMaster.isSecureText
        }
        
        if master == false {
            setActiveShadowColor = activeShadowColor
        }else {
            setActiveShadowColor = CCWAOutlineTextFieldMaster.activeShadowColor
        }
        
        if master == false {
            setDeactiveShadowColor = deactiveShadowColor
        }else {
            setDeactiveShadowColor = CCWAOutlineTextFieldMaster.deactiveShadowColor
        }
        
        if master == false {
            setActiveShadowRadius = activeShadowRadius
        }else {
            setActiveShadowRadius = CCWAOutlineTextFieldMaster.activeShadowRadius
        }
        
        if master == false {
            setDeactiveShadowRadius = deactiveShadowRadius
        }else {
            setDeactiveShadowRadius = CCWAOutlineTextFieldMaster.deactiveShadowRadius
        }

        if master == false {
            setActiveShadowOpacity = activeShadowOpacity
        }else {
            setActiveShadowOpacity = CCWAOutlineTextFieldMaster.activeShadowOpacity
        }
        
        if master == false {
            setDeactiveShadowOpacity = deactiveShadowOpacity
        }else {
            setDeactiveShadowOpacity = CCWAOutlineTextFieldMaster.deactiveShadowOpacity
        }
        
        if master == false {
            setActiveShadowOffset = activeShadowOffset
        }else {
            setActiveShadowOffset = CCWAOutlineTextFieldMaster.activeShadowOffset
        }
        
        if master == false {
            setDeactiveShadowOffset = deactiveShadowOffset
        }else {
            setDeactiveShadowOffset = CCWAOutlineTextFieldMaster.deactiveShadowOffset
        }
        
        if master == false {
            setDoneToolbar = doneToolbar
        }else {
            setDoneToolbar = CCWAOutlineTextFieldMaster.doneToolbar
        }
        
        if master == true {
            if let tint = CCWAOutlineTextFieldMaster.tintColor {
                tintColor = tint
            }
        }
    }
    
    public func continueUpdate() {
        text = field.text
    }
}
