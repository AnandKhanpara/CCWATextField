//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.


import UIKit

extension CCWATextFieldViewProperty {
    
    internal func setUpCCWATOutlineTextField() {
        addSubView()
    }
    
    internal func addSubView()  {
        addSubview(viewMainBase)
        viewMainBase.addSubview(viewBG)
        viewMainBase.addSubview(labelPlaceholder)
        viewMainBase.addSubview(viewSubBase)
        viewSubBase.addSubview(stackViewHorizontal)
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
    }
}
