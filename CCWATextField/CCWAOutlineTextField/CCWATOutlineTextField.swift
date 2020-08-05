//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.

import UIKit

@IBDesignable
public class CCWAOutlineTextField: CCWATextFieldViewProperty {
    
    @IBInspectable public var text:String = "" {
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

