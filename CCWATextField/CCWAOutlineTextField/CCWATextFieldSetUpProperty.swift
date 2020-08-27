//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.

import UIKit

public class CCWATextFieldSetUpProperty: UIView {
    
    lazy internal var viewMainBase: UIView = {
        return getViewMainBase()
    }()
    
    lazy internal var viewSubBase: UIView = {
        return getViewSubBase()
    }()
    
    lazy internal var viewBG: UIView = {
        return getViewBG()
    }()
    
    lazy internal var viewActiveTitlePosition: UIView = {
        return getViewActiveTitlePosition()
    }()
    
    lazy internal var stackViewHorizontal: UIStackView = {
        return getStackViewHorizontal()
    }()
    
    lazy internal var imageViewLeftSideImageView:UIImageView = {
        return getImageViewLeftSideImageView()
    }()
    
    lazy internal var viewLeftSideImageViewBase: UIView = {
        return getViewLeftSideImageViewBase()
    }()
    
    lazy internal var viewLeftSideSpace: UIView = {
        return getViewLeftSideSpace()
    }()
    
    lazy internal var viewRightSideImageViewBase: UIView = {
        return getViewRightSideImageViewBase()
    }()
    
    lazy internal var buttonClearText:CCWAButton = {
        return getButtonClearText()
    }()
    
    lazy internal var viewTextFieldInputBase: UIView = {
        return getViewTextFieldInputBase()
    }()
    
    lazy internal var textFieldInput: CCWATextField = {
        return getTextFieldInput()
    }()
    
    lazy internal var labelPlaceholder:UILabel = {
        return getLabelPlaceholder()
    }()
    
    internal var ccwaOutlineTFConstraint = CCWATOutlineTextFieldConstraintProperty()
    
    internal var delegate:CCWATextFieldSetUpPropertyDelegate?
    
    internal var isFirstTimeLoad = true
    
    public var field = UITextField() {
        didSet {
            Delay().time(0.3) {
                self.textFieldInput.delegate = self.findViewController() as? UITextFieldDelegate
            }
        }
    }
    
    internal var setText:String? = "" {
        didSet {
            if isFirstTimeLoad == true {
                Delay().time(0.3) {
                    self.isFirstTimeLoad = false
                    self.textFieldInput.text = self.setText
                    self.adjustActivePlaceholder()
                }
            }else {
                self.textFieldInput.text = self.setText
                self.adjustActivePlaceholder()
            }
        }
    }
    
    internal var setTextColor:UIColor = .black {
        didSet {
            textFieldInput.textColor = setTextColor
        }
    }
    
    internal var setPlaceholder:String = "" {
        didSet {
            labelPlaceholder.text = setPlaceholder
            Delay().time(0.1) {
                self.adjustDeactivePlaceholder()
            }
        }
    }
    
    internal var setAnimatePlaceholder:Bool = false {
         didSet {
            if setAnimatePlaceholder == true {
                labelPlaceholder.isHidden = false
                textFieldInput.placeholder = ""
                textFieldInput.attributedPlaceholder = NSAttributedString(string: setPlaceholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.clear])
            }else {
                labelPlaceholder.isHidden = true
                textFieldInput.placeholder = setPlaceholder
                textFieldInput.attributedPlaceholder = NSAttributedString(string: setPlaceholder, attributes: [NSAttributedString.Key.foregroundColor : setDeactivePlaceholderColor])
            }
         }
     }
     
    internal var setActivePlaceholderColor:UIColor? = nil
    
    internal var setDeactivePlaceholderColor:UIColor = .lightGray {
        didSet {
            labelPlaceholder.textColor = setDeactivePlaceholderColor
        }
    }
     
    internal var setActivePlacehoderBackGroundColor:UIColor = .white
     
    internal var setActiveBorderColor:UIColor? = nil
     
    internal var setDeactiveBorderColor:UIColor = .darkGray {
        didSet {
            viewBG.layer.borderColor = setDeactiveBorderColor.cgColor
        }
    }
     
    internal var setActiveBorderWidth:CGFloat = 0
     
    internal var setDeactiveBorderWidth:CGFloat = 1 {
        didSet {
            viewBG.layer.borderWidth = setDeactiveBorderWidth
        }
    }
     
    internal var setActiveCornerRadius:CGFloat = 0
     
    internal var setDeactiveCornerRadius:CGFloat = 5 {
        didSet {
            viewBG.layer.cornerRadius = setDeactiveCornerRadius
        }
    }
     
    internal var setActiveBackGroundColor:UIColor? = nil
     
    internal var setDeactiveBackGroundColor:UIColor = .white {
        didSet {
            viewBG.backgroundColor = setDeactiveBackGroundColor
        }
    }
     
    internal var setFontSize:CGFloat = 16 {
        didSet {
            setFont()
        }
    }
     
    internal var setFontName:String = "" {
        didSet {
            setFont()
        }
    }
    
    internal var setActiveImageLeftIcon:UIImage? = nil
     
    internal var setDeactiveImageLeftIcon:UIImage? = nil {
        didSet {
            imageViewLeftSideImageView.image = setDeactiveImageLeftIcon
            viewLeftSideImageViewBase.isHidden = setDeactiveImageLeftIcon == nil
        }
    }
    
    internal var setActiveImageLeftIconColor:UIColor? = nil
     
    internal var setDeactiveImageLeftIconColor:UIColor? = nil {
        didSet {
            if let color = setDeactiveImageLeftIconColor {
                imageViewLeftSideImageView.image = imageViewLeftSideImageView.image?.withRenderingMode(.alwaysTemplate)
                imageViewLeftSideImageView.tintColor = color
            }
        }
    }
     
    internal var setIsClearButton:Bool = true {
        didSet {
            buttonClearShowHide()
        }
    }
     
    internal var setImageClearButton:UIImage? = nil {
        didSet {
            buttonClearText.setImage(setImageClearButton, for: .normal)
        }
    }
    
    internal var setIsSecureText:Bool = false {
        didSet {
            textFieldInput.isSecureTextEntry = setIsSecureText
        }
    }
    
    internal var setActiveShadowColor: UIColor? = nil
    
    internal var setDeactiveShadowColor: UIColor = .clear {
        didSet {
            setShadowPath()
            viewBG.layer.shadowColor = setDeactiveShadowColor.cgColor
        }
    }
    
    internal var setActiveShadowRadius: CGFloat = 0
    
    internal var setDeactiveShadowRadius: CGFloat = 0 {
        didSet {
            setShadowPath()
            viewBG.layer.shadowRadius = setDeactiveShadowRadius
        }
    }
    
    internal var setActiveShadowOpacity:Float = 0
    
    internal var setDeactiveShadowOpacity:Float = 1 {
        didSet {
            setShadowPath()
            viewBG.layer.shadowOpacity = setDeactiveShadowOpacity
        }
    }
    
    internal var setActiveShadowOffset:CGSize = .zero
    
    internal var setDeactiveShadowOffset:CGSize = .zero {
        didSet {
            setShadowPath()
            viewBG.layer.shadowOffset = setDeactiveShadowOffset
        }
    }
    
    internal var setDoneToolbar:Bool = true {
        didSet {
            Delay().time(0.2) {
                self.textFieldInput.inputAccessoryView = self.setDoneToolbar ? self.setToolBarDone() : nil
            }
        }
    }
}
