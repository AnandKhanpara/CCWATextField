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

public class CCWATextFieldMaster {
    
    public var textColor:UIColor = .black
    
    public var animatePlaceholder:Bool = false
    
    public var activePlaceholderColor:UIColor? = nil
    
    public var deactivePlaceholderColor:UIColor = .lightGray
    
    public var activePlacehoderBackGroundColor:UIColor = .white
    
    public var activeBorderColor:UIColor? = nil
    
    public var deactiveBorderColor:UIColor = .darkGray
    
    public var activeBorderWidth:CGFloat = 0
    
    public var deactiveBorderWidth:CGFloat = 1
    
    public var activeCornerRadius:CGFloat = 0
    
    public var deactiveCornerRadius:CGFloat = 5
    
    public var activeBackGroundColor:UIColor? = nil
    
    public var deactiveBackGroundColor:UIColor = .white
    
    public var fontSize:CGFloat = 16
    
    public var fontName:String = ""
    
    public var activeImageLeftIcon:UIImage? = nil
    
    public var deactiveImageLeftIcon:UIImage? = nil
    
    public var activeImageLeftIconColor:UIColor? = nil
    
    public var deactiveImageLeftIconColor:UIColor? = nil
    
    public var isClearButton:Bool = true
    
    public var imageClearButton:UIImage? = nil
    
    public var isSecureText:Bool = false
    
    public var activeShadowColor: UIColor? = nil
    
    public var deactiveShadowColor: UIColor = .clear
    
    public var activeShadowRadius: CGFloat = 0
    
    public var deactiveShadowRadius: CGFloat = 0
    
    public var activeShadowOpacity:Float = 0
    
    public var deactiveShadowOpacity:Float = 1
    
    public var activeShadowOffset:CGSize = .zero
    
    public var deactiveShadowOffset:CGSize = .zero
    
    public var doneToolbar:Bool = true
    
    public var tintColor:UIColor? = nil
    
    public init() {
        
    }
}
