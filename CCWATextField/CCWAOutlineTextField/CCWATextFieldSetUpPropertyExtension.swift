//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.


import UIKit

extension CCWATextFieldSetUpProperty {
    
    internal func setFont() {
        var font:UIFont? = UIFont.systemFont(ofSize: setFontSize)
        if setFontName.empty() == false {
            font = UIFont(name: setFontName, size: setFontSize)
        }
        textFieldInput.font = font
        labelPlaceholder.font = font
    }
    
    internal func setShadowPath() {
        Delay().time(0.05) {
            self.viewBG.layer.shadowPath = UIBezierPath(roundedRect: self.viewBG.bounds, cornerRadius: self.setDeactiveCornerRadius).cgPath
        }
    }
    
    internal func setToolBarDone() -> UIToolbar {
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(activityCCWATextField_toolbarDone))
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        toolbar.setItems([space, done], animated: true)
        return toolbar
    }
    
    @objc internal func activityCCWATextField_toolbarDone(sender:UIBarButtonItem) {
        findViewController()?.view.endEditing(true)
    }
    
    @objc internal func activityCCWATextField_editingChanged(sender:CCWATextField) {
        buttonClearShowHide()
        if let editingChanged = sender.editingChanged {
            editingChanged(sender.text ?? "")
        }
    }
    
    @objc internal func activityCCWATextField_editingDidBegin(sender:CCWATextField) {
        activePlaceholder()
        buttonClearShowHide()
        if let editingDidBegin = sender.editingDidBegin {
            editingDidBegin(sender.text ?? "")
        }
    }
    
    @objc internal func activityCCWATextField_editingDidEnd(sender:CCWATextField) {
        adjustDeactivePlaceholder()
        viewRightSideImageViewBase.isHidden = true
        if let editingDidEnd = sender.editingDidEnd {
            editingDidEnd(sender.text ?? "")
        }
    }
    
    @objc internal func activityCCWAButton_touchUpInside(sender:CCWAButton) {
        textFieldInput.text = nil
        buttonClearShowHide()
        if let touchUpInside = sender.touchUpInside {
            touchUpInside()
        }
    }
    
    internal func addTargetAction() {
        buttonClearShowHide()
        textFieldInput.addTarget(self, action: #selector(activityCCWATextField_editingChanged), for: .editingChanged)
        textFieldInput.addTarget(self, action: #selector(activityCCWATextField_editingDidBegin), for: .editingDidBegin)
        textFieldInput.addTarget(self, action: #selector(activityCCWATextField_editingDidEnd), for: .editingDidEnd)
        buttonClearText.addTarget(self, action: #selector(activityCCWAButton_touchUpInside), for: .touchUpInside)
    }
    
    internal func adjustDeactivePlaceholder() {
        if textIsEmpty() == true {
            textFieldInput.text = nil
            deactivePlaceholder()
        }
    }
    
    internal func adjustActivePlaceholder() {
        if textIsEmpty() == false {
            activePlaceholder()
        }
    }
    
    internal func buttonClearShowHide() {
        if setIsClearButton == false {
            viewRightSideImageViewBase.isHidden = true
        }else {
            viewRightSideImageViewBase.isHidden = textIsEmpty()
        }
    }
    
    internal func textIsEmpty() -> Bool {
        let text = textFieldInput.text ?? ""
        return (text.isEmpty == true || text.trimmingCharacters(in: .whitespacesAndNewlines) == "" || text == "")
    }
    
    internal func activePlaceholder() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            
            self.labelPlaceholder.text = " " + self.setPlaceholder + " "
            
            self.labelPlaceholder.textColor = self.setActivePlaceholderColor ?? self.setDeactivePlaceholderColor
            
            self.labelPlaceholder.backgroundColor = self.setPlaceholder.empty() ? .clear : self.setActivePlacehoderBackGroundColor

            self.viewBG.layer.borderColor = self.setActiveBorderColor?.cgColor ?? self.setDeactiveBorderColor.cgColor
            
            self.viewBG.layer.borderWidth = self.setActiveBorderWidth > 0 ? self.setActiveBorderWidth : self.setDeactiveBorderWidth
            
            self.viewBG.layer.cornerRadius = self.setActiveCornerRadius > 0 ? self.setActiveCornerRadius : self.setDeactiveCornerRadius
            
            self.viewBG.backgroundColor = self.setActiveBackGroundColor ?? self.setDeactiveBackGroundColor
            
            self.viewBG.layer.shadowRadius = self.setActiveShadowRadius > 0 ? self.setActiveShadowRadius : self.setDeactiveShadowRadius
            
            self.viewBG.layer.shadowOpacity = self.setActiveShadowOpacity > 0 ? self.setActiveShadowOpacity : self.setDeactiveShadowOpacity
            
            self.viewBG.layer.shadowColor = self.setActiveShadowColor?.cgColor ?? self.setDeactiveShadowColor.cgColor
            
            self.viewBG.layer.shadowOffset = self.setActiveShadowOffset != .zero ? self.setActiveShadowOffset : self.setDeactiveShadowOffset
            
            self.imageViewLeftSideImageView.image = self.setActiveImageLeftIcon
        
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveTopConstraint.isActive = true
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveLeadingConstraint.isActive = true
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveTopConstraint.isActive = false
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveLeadingConstraint.isActive = false
            self.ccwaOutlineTFConstraint.labelPlaceholderHeightConstraint.constant =  16
            self.ccwaOutlineTFConstraint.labelPlaceholderWidthConstraint.constant = self.ccwaOutlineTFConstraint.labelPlaceHolderWidth * 0.75
            self.layoutIfNeeded()
        })
    }
    
    internal func deactivePlaceholder() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
            
            self.labelPlaceholder.backgroundColor = .clear
            
            self.labelPlaceholder.text = self.setPlaceholder
            
            self.labelPlaceholder.textColor = self.setDeactivePlaceholderColor
            
            self.labelPlaceholder.backgroundColor = .clear

            self.viewBG.layer.borderColor = self.setDeactiveBorderColor.cgColor
            
            self.viewBG.layer.borderWidth = self.setDeactiveBorderWidth
            
            self.viewBG.layer.cornerRadius = self.setDeactiveCornerRadius
            
            self.viewBG.backgroundColor = self.setDeactiveBackGroundColor
            
            self.viewBG.layer.shadowRadius = self.setDeactiveShadowRadius
            
            self.viewBG.layer.shadowOpacity = self.setDeactiveShadowOpacity
            
            self.viewBG.layer.shadowColor = self.setDeactiveShadowColor.cgColor
            
            self.viewBG.layer.shadowOffset = self.setDeactiveShadowOffset
            
            self.imageViewLeftSideImageView.image = self.setDeactiveImageLeftIcon
            
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveTopConstraint.isActive = false
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveLeadingConstraint.isActive = false
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveTopConstraint.isActive = true
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveLeadingConstraint.isActive = true
            self.ccwaOutlineTFConstraint.labelPlaceholderHeightConstraint.constant =  self.ccwaOutlineTFConstraint.labelPlaceHolderHeight
            self.ccwaOutlineTFConstraint.labelPlaceholderWidthConstraint.constant = self.ccwaOutlineTFConstraint.labelPlaceHolderWidth
            self.layoutIfNeeded()
        })
    }
}
