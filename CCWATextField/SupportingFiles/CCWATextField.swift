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

//@IBDesignable
public class CCWATextField: CCWATextFieldViewProperty {
    
    @IBInspectable public var master:Bool = false {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var text:String? = "" {
        didSet {
            delegate?.updating()
        }
    }
    
    @IBInspectable public var textColor:UIColor = .black {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var placeholder:String = "" {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var animatePlaceholder:Bool = false {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activePlaceholderColor:UIColor? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactivePlaceholderColor:UIColor = .lightGray {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activePlacehoderBackGroundColor:UIColor = .white {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeBorderColor:UIColor? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveBorderColor:UIColor = .darkGray {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeBorderWidth:CGFloat = 0 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveBorderWidth:CGFloat = 1 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeCornerRadius:CGFloat = 0 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveCornerRadius:CGFloat = 5 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeBackGroundColor:UIColor? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveBackGroundColor:UIColor = .white {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var fontSize:CGFloat = 16 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var fontName:String = "" {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeImageLeftIcon:UIImage? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveImageLeftIcon:UIImage? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeImageLeftIconColor:UIColor? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveImageLeftIconColor:UIColor? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var isClearButton:Bool = true {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var imageClearButton:UIImage? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var isSecureText:Bool = false {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeShadowColor: UIColor? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveShadowColor: UIColor = .clear {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeShadowRadius: CGFloat = 0 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveShadowRadius: CGFloat = 0 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeShadowOpacity:Float = 0 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveShadowOpacity:Float = 1 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var activeShadowOffset:CGSize = .zero {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var deactiveShadowOffset:CGSize = .zero {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var doneToolbar:Bool = true {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownMaster:Bool = false {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownBackGroundColor: UIColor = .white {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownSeperatorLineColor: UIColor = .lightGray {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownBorderColor: UIColor = .lightGray {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownBorderWidth: CGFloat = 0.5 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownCornerRadius:CGFloat = 5 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownShadowColor: UIColor = .darkGray {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownShadowRadius: CGFloat = 4 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownShadowOpacity:Float = 0.5 {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownShadowOffset:CGSize = CGSize(width: 0, height: 2) {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownTitleColor:UIColor = .black {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownSubtitleColor:UIColor = .lightGray {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownTitleFontName:String = "" {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownSubtitleFontName:String = "" {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownSearchPlaceholder:String = "" {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownNoDataMessage:String = "" {
        didSet {
            delegate?.update()
        }
    }
    
    @IBInspectable public var dropDownArrowImage:UIImage? = nil {
        didSet {
            delegate?.update()
        }
    }
    
    
    public var masterValue = CCWATextFieldMaster() {
        didSet {
            delegate?.update()
        }
    }
    
    public var dropDownMasterValue = CCWADropDownViewMaster() {
        didSet {
            delegate?.update()
        }
    }
    
    public var fieldType:FieldType = .textField {
        didSet {
            delegate?.update()
        }
    }
    
    public var arrCCWADropDownModel = [CCWADropDownModel]() {
        didSet {
            delegate?.update()
        }
    }
    
    public var dropDownDidSelectRow:((_ ccwaTextField:CCWATextField, _ row:Int, _ value:Any?) -> ())?
        
    public var dropDownSearchEditingChanged:((_ ccwaTextField:CCWATextField, _ arrCCWADropDownModel:[CCWADropDownModel], _ search:String) -> ([CCWADropDownModel]))?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        delegate()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        delegate()
    }
    
    func delegate() {
        delegate = self
        delegate?.update()
    }
}



