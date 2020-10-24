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

public class CCWATextFieldViewProperty:UIView {
    
    lazy internal var viewMainBase: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy internal var viewSubBase: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy internal var viewBG: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy internal var viewActiveTitlePosition: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy internal var stackViewHorizontal: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(viewLeftSideImageViewBase)
        stackView.addArrangedSubview(viewTextFieldInputBase)
        stackView.addArrangedSubview(viewRightSideImageViewBase)
        stackView.addArrangedSubview(viewRightSideDropDownArrowImageViewBase)
        NSLayoutConstraint.activate([
            viewLeftSideImageViewBase.widthAnchor.constraint(equalTo: viewLeftSideImageViewBase.heightAnchor, multiplier: 1),
        ])
        return stackView
    }()
    
    lazy internal var imageViewLeftSideImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy internal var viewLeftSideImageViewBase: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageViewLeftSideImageView)
        NSLayoutConstraint.activate([
            imageViewLeftSideImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            imageViewLeftSideImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            imageViewLeftSideImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            imageViewLeftSideImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        return view
    }()
    
    lazy internal var viewLeftSideSpace: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy internal var viewRightSideImageViewBase: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.isHidden = true
        view.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(buttonClearText)
        NSLayoutConstraint.activate([
            buttonClearText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            buttonClearText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            buttonClearText.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            buttonClearText.heightAnchor.constraint(equalToConstant: 15),
            buttonClearText.widthAnchor.constraint(equalTo: buttonClearText.heightAnchor, multiplier: 1)
        ])
        return view
    }()
    
    lazy internal var viewRightSideDropDownArrowImageViewBase: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imageViewDropDownArrow)
        NSLayoutConstraint.activate([
            imageViewDropDownArrow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            imageViewDropDownArrow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            imageViewDropDownArrow.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            imageViewDropDownArrow.heightAnchor.constraint(equalToConstant: 20),
            imageViewDropDownArrow.widthAnchor.constraint(equalTo: imageViewDropDownArrow.heightAnchor, multiplier: 1)
        ])
        return view
    }()
    
    lazy internal var buttonClearText:CCWAUIButton = {
        let button = CCWAUIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy internal var buttonFieldActive:UIButton = {
        let button = UIButton()
        button.isHidden = true
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy internal var viewTextFieldInputBase: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(textFieldInput)
        NSLayoutConstraint.activate([
            textFieldInput.topAnchor.constraint(equalTo: view.topAnchor, constant: 2),
            textFieldInput.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            textFieldInput.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            textFieldInput.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
        return view
    }()
    
    lazy internal var textFieldInput: CCWAUITextField = {
        let textField = CCWAUITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.backgroundColor = .clear
        textField.placeholder = ""
        field = textField
        return textField
    }()
    
    lazy internal var labelPlaceholder:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.backgroundColor = .clear
        label.minimumScaleFactor = 0.1
        label.adjustsFontSizeToFitWidth = true
        label.textColor = UIColor.gray.withAlphaComponent(0.5)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var imageViewDropDownArrow:UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        if #available(iOS 13.0, *) {
            imageView.image = UIImage(systemName: "chevron.down")
        }
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //MARK:- CCWATOutlineTextFieldConstraintProperty
    
    internal var ccwaOutlineTFConstraint = CCWATOutlineTextFieldConstraintProperty()
    
    //MARK:- CCWATextFieldDelegate
    
    internal var delegate:CCWATextFieldDelegate?
    
    //MARK:- Static Internal Value
    
    internal var isFirstTimeLoad = true
    
    //MARK:- Set Property
    
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
            btnClearTintColorChange()
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
    
    internal var setDropDownBackGroundColor: UIColor = .white
    
    internal var setDropDownSeperatorLineColor: UIColor = .lightGray
    
    internal var setDropDownBorderColor: UIColor = .lightGray
    
    internal var setDropDownBorderWidth: CGFloat = 0.5
    
    internal var setDropDownCornerRadius:CGFloat = 5
    
    internal var setDropDownShadowColor: UIColor = .darkGray
    
    internal var setDropDownShadowRadius: CGFloat = 4
    
    internal var setDropDownShadowOpacity:Float = 0.5
    
    internal var setDropDownShadowOffset:CGSize = CGSize(width: 0, height: 2)
    
    internal var setDropDownTitleColor:UIColor = .black
    
    internal var setDropDownSubtitleColor:UIColor = .lightGray
    
    internal var setDropDownTitleFontName:String = ""
    
    internal var setDropDownSubtitleFontName:String = ""
    
    internal var setDropDownSearchPlaceholder:String = ""

    internal var setDropDownNoDataMessage:String = ""
    
    internal var setDropDownArrowImage:UIImage? = nil {
        didSet {
            if let image = setDropDownArrowImage {
                imageViewDropDownArrow.image = image
                imageViewDropDownArrow.tintColor = self.tintColor
                viewRightSideDropDownArrowImageViewBase.isHidden = false
            }else {
                viewRightSideDropDownArrowImageViewBase.isHidden = true
            }
        }
    }
    
    internal var setFieldType:FieldType = .textField {
        didSet {
            if setFieldType == .textField {
                buttonFieldActive.isHidden = true
                viewRightSideDropDownArrowImageViewBase.isHidden = true
            }else {
                viewRightSideDropDownArrowImageViewBase.isHidden = false
                buttonFieldActive.isHidden = false
            }
        }
    }
    
    internal var ccwaTextField:CCWATextField?
    
    internal var viewDropDown:UIView?
    
    internal var viewDropDownBack:UIButton?
    
    internal var setArrCCWADropDownModel = [CCWADropDownModel]()

    internal let _UIConstraintBasedLayoutLogUnsatisfiable = "_UIConstraintBasedLayoutLogUnsatisfiable"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpCCWATOutlineTextField()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpCCWATOutlineTextField()
    }
    
    public enum FieldType {
        case textField
        case dropDown
        case dropDownSearch
    }
}


