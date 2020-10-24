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

extension CCWATextFieldViewProperty {
    
    ///NOTE :- `Init UI CCWATextField`
    
    internal func setUpCCWATOutlineTextField() {
        addSubView()
    }
    
    internal func addSubView()  {
        addSubview(viewMainBase)
        viewMainBase.addSubview(viewBG)
        viewMainBase.addSubview(labelPlaceholder)
        viewMainBase.addSubview(viewSubBase)
        viewSubBase.addSubview(stackViewHorizontal)
        viewSubBase.addSubview(buttonFieldActive)
        
        addSubViewConstraint()
        
        Delay().time(0.2) {
            self.labelPlaceholder.frame = self.textFieldInput.bounds
        }
    }
    
    internal func addSubViewConstraint() {
        
        NSLayoutConstraint.activate([
            
            viewMainBase.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            viewMainBase.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            viewMainBase.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            viewMainBase.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            viewBG.topAnchor.constraint(equalTo: viewMainBase.topAnchor, constant: 10),
            viewBG.leadingAnchor.constraint(equalTo: viewMainBase.leadingAnchor, constant: 0),
            viewBG.trailingAnchor.constraint(equalTo: viewMainBase.trailingAnchor, constant: 0),
            viewBG.bottomAnchor.constraint(equalTo: viewMainBase.bottomAnchor, constant: 0),
            
            viewSubBase.topAnchor.constraint(equalTo: viewMainBase.topAnchor, constant: 10),
            viewSubBase.leadingAnchor.constraint(equalTo: viewMainBase.leadingAnchor, constant: 0),
            viewSubBase.trailingAnchor.constraint(equalTo: viewMainBase.trailingAnchor, constant: 0),
            viewSubBase.bottomAnchor.constraint(equalTo: viewMainBase.bottomAnchor, constant: 0),
            
            stackViewHorizontal.topAnchor.constraint(greaterThanOrEqualTo: viewSubBase.topAnchor, constant: 0),
            stackViewHorizontal.leadingAnchor.constraint(equalTo: viewSubBase.leadingAnchor, constant: 10),
            stackViewHorizontal.trailingAnchor.constraint(equalTo: viewSubBase.trailingAnchor, constant: -10),
            stackViewHorizontal.bottomAnchor.constraint(lessThanOrEqualTo: viewSubBase.bottomAnchor, constant: 0),
            stackViewHorizontal.centerYAnchor.constraint(equalTo: viewSubBase.centerYAnchor, constant: 0),
            
            buttonFieldActive.topAnchor.constraint(equalTo: stackViewHorizontal.topAnchor, constant: 0),
            buttonFieldActive.leadingAnchor.constraint(equalTo: stackViewHorizontal.leadingAnchor, constant: 0),
            buttonFieldActive.trailingAnchor.constraint(equalTo: stackViewHorizontal.trailingAnchor, constant: 0),
            buttonFieldActive.bottomAnchor.constraint(equalTo: stackViewHorizontal.bottomAnchor, constant: 0),
        ])
        
        self.self.ccwaOutlineTFConstraint.stackViewHorizontalHeightConstraint = stackViewHorizontal.heightAnchor.constraint(equalToConstant: 25)
        self.ccwaOutlineTFConstraint.stackViewHorizontalHeightConstraint.isActive = true
        
        self.addDelayConstraint()
    }
    
    internal func addDelayConstraint() {
        Delay().time(0.1) {
            self.ccwaOutlineTFConstraint.labelPlaceHolderHeight = self.textFieldInput.frame.size.height
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveTopConstraint = self.labelPlaceholder.topAnchor.constraint(equalTo: self.textFieldInput.topAnchor, constant: -1)
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveLeadingConstraint = self.labelPlaceholder.leadingAnchor.constraint(equalTo: self.textFieldInput.leadingAnchor, constant: 0)
            self.ccwaOutlineTFConstraint.labelPlaceholderHeightConstraint = self.labelPlaceholder.heightAnchor.constraint(equalToConstant: self.ccwaOutlineTFConstraint.labelPlaceHolderHeight)
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveTopConstraint.isActive = true
            self.ccwaOutlineTFConstraint.labelPlaceholderDeactiveLeadingConstraint.isActive = true
            self.ccwaOutlineTFConstraint.labelPlaceholderHeightConstraint.isActive = true
            
            let radius = self.setActiveCornerRadius > 0 ? self.setActiveCornerRadius : self.setDeactiveCornerRadius
            let leadingConstant = radius <= 5 ? (radius + 10) : (radius + 5)
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveTopConstraint = self.labelPlaceholder.topAnchor.constraint(equalTo: self.viewMainBase.topAnchor, constant: 0)
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveLeadingConstraint = self.labelPlaceholder.leadingAnchor.constraint(equalTo: self.viewMainBase.leadingAnchor, constant: leadingConstant)
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveTopConstraint.isActive = false
            self.ccwaOutlineTFConstraint.labelPlaceholderActiveLeadingConstraint.isActive = false
            
        }.time(0.1) {
            self.ccwaOutlineTFConstraint.labelPlaceHolderWidth = self.labelPlaceholder.frame.size.width
            self.ccwaOutlineTFConstraint.labelPlaceholderWidthConstraint = self.labelPlaceholder.widthAnchor.constraint(equalToConstant: self.ccwaOutlineTFConstraint.labelPlaceHolderWidth)
            self.ccwaOutlineTFConstraint.labelPlaceholderWidthConstraint.isActive = true
        }.time(0.3) {
            self.addTargetAction() 
        }
        
        UserDefaults.standard.setValue(false, forKey: _UIConstraintBasedLayoutLogUnsatisfiable)
        UserDefaults.standard.synchronize()
    }
    
    ///NOTE :- `Set Value CCWATextField`
    
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
    
    internal func btnClearTintColorChange() {
        buttonClearText.imageView?.image = buttonClearText.imageView?.image?.withRenderingMode(.alwaysTemplate)
        buttonClearText.imageView?.tintColor = tintColor
    }
    
    internal func setToolBarDone() -> UIToolbar {
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(activityCCWATextField_toolbarDone))
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        done.tintColor = self.tintColor
        toolbar.setItems([space, done], animated: true)
        return toolbar
    }
    
    @objc internal func activityCCWATextField_toolbarDone(sender:UIBarButtonItem) {
        findViewController()?.view.endEditing(true)
    }
    
    @objc internal func activityCCWATextField_editingChanged(sender:CCWAUITextField) {
        buttonClearShowHide()
        delegate?.continueUpdate()
        if let editingChanged = sender.editingChanged {
            editingChanged(sender.text ?? "")
        }
    }
    
    @objc internal func activityCCWATextField_editingDidBegin(sender:CCWAUITextField) {
        btnClearTintColorChange()
        activePlaceholder()
        buttonClearShowHide()
        if let editingDidBegin = sender.editingDidBegin {
            editingDidBegin(sender.text ?? "")
        }
    }
    
    @objc internal func activityCCWATextField_editingDidEnd(sender:CCWAUITextField) {
        adjustDeactivePlaceholder()
        viewRightSideImageViewBase.isHidden = true
        if let editingDidEnd = sender.editingDidEnd {
            editingDidEnd(sender.text ?? "")
        }
    }
    
    @objc internal func activityCCWAButton_touchUpInside(sender:CCWAUIButton) {
        textFieldInput.text = nil
        buttonClearShowHide()
        if let touchUpInside = sender.touchUpInside {
            touchUpInside()
        }
    }
    
    @objc internal func activityField_touchUpInside(sender:UIButton) {
        addCCWADropDownView()
    }
    
    
    @objc func btnRemoveDropDown_touchUpInside(sender:UIButton) {
        removeDropDown(true)
    }
    
    @objc func btnRemoveDropDown_touchDragInside(sender:UIButton) {
        removeDropDown(true)
    }
    
    func addCCWADropDownView() {
        
        removeDropDown()
        
        guard let viewController = findViewController() else { return }
        
        activePlaceholder()
        
        let topSafeArea = viewController.view.safeAreaInsets.top
        
        let bottomSafeArea = viewController.view.safeAreaInsets.bottom
        
        let view = viewController.view ?? UIView()
        view.endEditing(true)
        let frame = convert(bounds, to: view)
        
        let buttonRemoveDropDown:UIButton = {
            let button = UIButton()
            button.addTarget(self, action: #selector(btnRemoveDropDown_touchDragInside), for: .touchDragInside)
            button.addTarget(self, action: #selector(btnRemoveDropDown_touchUpInside), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        
        let ccwaDropDownView:CCWADropDownView = {
            let view = CCWADropDownView(frame: .zero, ccwaTextField: ccwaTextField, arrCCWADropDownModel: setArrCCWADropDownModel)
            view.ccwaTextField = ccwaTextField
            view.frame = frame
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        view.addSubview(buttonRemoveDropDown)
        
        view.addSubview(ccwaDropDownView)
        
        NSLayoutConstraint.activate([
            buttonRemoveDropDown.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            buttonRemoveDropDown.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            buttonRemoveDropDown.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            buttonRemoveDropDown.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            ccwaDropDownView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: frame.origin.x),
            ccwaDropDownView.widthAnchor.constraint(equalToConstant: frame.size.width),
        ])
        
        let heightConstraint = ccwaDropDownView.heightAnchor.constraint(equalToConstant: 40)
        heightConstraint.isActive = true
        
        let bottomSpace = (view.frame.size.height - (frame.size.height + frame.origin.y + bottomSafeArea + 20))
        
        let topSpace = frame.origin.y - (topSafeArea + 10)
        
        print(bottomSpace, topSpace, frame)
        
        let extraSpace = CGFloat(setArrCCWADropDownModel.filter({ (($0.image != nil) || ($0.imageURL != nil) || (($0.subtitle ?? "").isEmpty == false)) == true }).count * 17)
        
        var count = setArrCCWADropDownModel.count
        
        if count == 0 {
            count = 1
        }
        
        var heightDropDown :CGFloat = CGFloat(count * 36) + extraSpace
        
        if ccwaTextField?.fieldType == .dropDownSearch {
            heightDropDown += 40
        }

        func setCCWADropDownViewShadow(height:CGFloat, frame:CGRect) {
            heightConstraint.constant = height
            ccwaOutlineTFConstraint.dropDownViewHeight = heightConstraint
            ccwaDropDownView.shadow(frame: frame)
        }

        if bottomSpace > heightDropDown {
            print(1)
            ccwaDropDownView.topAnchor.constraint(equalTo: view.topAnchor, constant: (frame.origin.y + frame.size.height + 5)).isActive = true
            heightConstraint.constant = heightDropDown
            ccwaDropDownView.shadow(frame: CGRect(x: 0, y: 0, width: frame.width, height: heightDropDown))
            setCCWADropDownViewShadow(height: heightDropDown, frame: CGRect(x: 0, y: 0, width: frame.width, height: heightDropDown))
        }else if topSpace > heightDropDown  {
            print(2)
            ccwaDropDownView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: frame.origin.y + 5).isActive = true
            setCCWADropDownViewShadow(height: heightDropDown, frame: CGRect(x: 0, y: 0, width: frame.width, height: heightDropDown))
        }else if topSpace < bottomSpace {
            print(3)
            ccwaDropDownView.topAnchor.constraint(equalTo: view.topAnchor, constant: (frame.origin.y + frame.size.height + 5)).isActive = true
            setCCWADropDownViewShadow(height: bottomSpace, frame: CGRect(x: 0, y: 0, width: frame.width, height: bottomSpace))
        }else if bottomSpace < topSpace  {
            print(4)
            ccwaDropDownView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: frame.origin.y + 5).isActive = true
            setCCWADropDownViewShadow(height: topSpace, frame: CGRect(x: 0, y: 0, width: frame.width, height: topSpace))
        }else {
            print(5)
            ccwaDropDownView.topAnchor.constraint(equalTo: view.topAnchor, constant: (frame.origin.y + frame.size.height + 5)).isActive = true
            setCCWADropDownViewShadow(height: bottomSpace, frame: CGRect(x: 0, y: 0, width: frame.width, height: bottomSpace))
        }
        
        viewDropDown = ccwaDropDownView
        viewDropDownBack = buttonRemoveDropDown
        
        UIView.animate(withDuration: 0.2) {
            self.viewRightSideDropDownArrowImageViewBase.transform = CGAffineTransform(rotationAngle: .pi)
            self.layoutIfNeeded()
        }

    }
    
    func removeDropDown(_ animated:Bool = false) {
        if animated == true {
            deactivePlaceholder()
        }
        viewDropDownBack?.removeFromSuperview()
        viewDropDown?.removeFromSuperview()
        
        UIView.animate(withDuration: 0.2) {
            self.viewRightSideDropDownArrowImageViewBase.transform = self.viewRightSideDropDownArrowImageViewBase.transform.rotated(by: .pi)
            self.layoutIfNeeded()
        }
    }
    
    internal func addTargetAction() {
        buttonClearShowHide()
        textFieldInput.addTarget(self, action: #selector(activityCCWATextField_editingChanged), for: .editingChanged)
        textFieldInput.addTarget(self, action: #selector(activityCCWATextField_editingDidBegin), for: .editingDidBegin)
        textFieldInput.addTarget(self, action: #selector(activityCCWATextField_editingDidEnd), for: .editingDidEnd)
        buttonClearText.addTarget(self, action: #selector(activityCCWAButton_touchUpInside), for: .touchUpInside)
        buttonFieldActive.addTarget(self, action: #selector(activityField_touchUpInside), for: .touchUpInside)
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
            self.viewRightSideImageViewBase.isHidden = textIsEmpty()
        }
    }
    
    internal func textIsEmpty() -> Bool {
        let text = textFieldInput.text ?? ""
        return (text.isEmpty == true || text.trimmingCharacters(in: .whitespacesAndNewlines) == "" || text == "")
    }
    
    internal func activePlaceholder() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            
            self.labelPlaceholder.text = " " + self.setPlaceholder + " "
            
            if self.setAnimatePlaceholder == true {
                self.labelPlaceholder.textColor = self.setActivePlaceholderColor ?? self.setDeactivePlaceholderColor
            }else {
                self.textFieldInput.attributedPlaceholder = NSAttributedString(string: self.setPlaceholder, attributes: [NSAttributedString.Key.foregroundColor : self.setActivePlaceholderColor ?? self.setDeactivePlaceholderColor])
            }
            
            self.labelPlaceholder.backgroundColor = self.setPlaceholder.empty() ? .clear : self.setActivePlacehoderBackGroundColor

            self.viewBG.layer.borderColor = self.setActiveBorderColor?.cgColor ?? self.setDeactiveBorderColor.cgColor
            
            self.viewBG.layer.borderWidth = self.setActiveBorderWidth > 0 ? self.setActiveBorderWidth : self.setDeactiveBorderWidth
            
            self.viewBG.layer.cornerRadius = self.setActiveCornerRadius > 0 ? self.setActiveCornerRadius : self.setDeactiveCornerRadius
            
            self.viewBG.backgroundColor = self.setActiveBackGroundColor ?? self.setDeactiveBackGroundColor
            
            self.viewBG.layer.shadowRadius = self.setActiveShadowRadius > 0 ? self.setActiveShadowRadius : self.setDeactiveShadowRadius
            
            self.viewBG.layer.shadowOpacity = self.setActiveShadowOpacity > 0 ? self.setActiveShadowOpacity : self.setDeactiveShadowOpacity
            
            self.viewBG.layer.shadowColor = self.setActiveShadowColor?.cgColor ?? self.setDeactiveShadowColor.cgColor
            
            self.viewBG.layer.shadowOffset = self.setActiveShadowOffset != .zero ? self.setActiveShadowOffset : self.setDeactiveShadowOffset
            
            self.imageViewLeftSideImageView.image = self.setActiveImageLeftIcon ?? self.setDeactiveImageLeftIcon
            
            if let color = self.setActiveImageLeftIconColor {
                self.imageViewLeftSideImageView.image = self.imageViewLeftSideImageView.image?.withRenderingMode(.alwaysTemplate)
                self.imageViewLeftSideImageView.tintColor = color
            }else if let color = self.setDeactiveImageLeftIconColor {
                self.imageViewLeftSideImageView.image = self.imageViewLeftSideImageView.image?.withRenderingMode(.alwaysTemplate)
                self.imageViewLeftSideImageView.tintColor = color
            }
        
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
            
            if self.setAnimatePlaceholder == true {
                self.labelPlaceholder.textColor = self.setDeactivePlaceholderColor
            }else {
                self.textFieldInput.attributedPlaceholder = NSAttributedString(string: self.setPlaceholder, attributes: [NSAttributedString.Key.foregroundColor : self.setDeactivePlaceholderColor])
            }
            
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
            
            if let color = self.setDeactiveImageLeftIconColor {
                self.imageViewLeftSideImageView.image = self.imageViewLeftSideImageView.image?.withRenderingMode(.alwaysTemplate)
                self.imageViewLeftSideImageView.tintColor = color
            }
            
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

/*
 //arr = [CCWADropDownModel(title: "AAAashjf", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf", image: UIImage(systemName: "book")), CCWADropDownModel(title: "aidhas isadh", image: UIImage(named: "road")), CCWADropDownModel(title: "sadh", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf"), CCWADropDownModel(title: "AAdh", image: UIImage(named: "road")), CCWADropDownModel(title: "dhas isadh")]
            //arr = [CCWADropDownModel(title: "AAAashjf", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf"), CCWADropDownModel(title: "aidhas isadh", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf"), CCWADropDownModel(title: "sadh", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf"), CCWADropDownModel(title: "AAdh"), CCWADropDownModel(title: "dhas isadh")]
            //arr = [CCWADropDownModel(title: "AAAashjf"), CCWADropDownModel(title: "aidhas isadh"), CCWADropDownModel(title: "sadh"), CCWADropDownModel(title: "AAdh"), CCWADropDownModel(title: "dhas isadh")]
            //arr = [CCWADropDownModel(title: "AAAashjf", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf", image: UIImage(systemName: "book")), CCWADropDownModel(title: "aidhas isadh", image: UIImage(named: "road")), CCWADropDownModel(title: "sadh", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf"), CCWADropDownModel(title: "AAdh", imageURL: "https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1778&q=80"), CCWADropDownModel(title: "dhas isadh"), CCWADropDownModel(title: "AAAashjf", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf", image: UIImage(systemName: "book")), CCWADropDownModel(title: "aidhas isadh", image: UIImage(named: "road")), CCWADropDownModel(title: "sadh", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf"), CCWADropDownModel(title: "AAdh", image: UIImage(named: "road")), CCWADropDownModel(title: "dhas isadh"), CCWADropDownModel(title: "AAAashjf", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf", image: UIImage(systemName: "book")), CCWADropDownModel(title: "aidhas isadh", image: UIImage(named: "road")), CCWADropDownModel(title: "sadh", subtitle: "sdsdfsdfsfds fdsff sf dsfsdfs fdsf"), CCWADropDownModel(title: "AAdh", image: UIImage(named: "road")), CCWADropDownModel(title: "dhas isadh")]
 */
