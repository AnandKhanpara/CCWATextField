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

public class CCWADropDownViewMaster {
    
    public var dropDownBackGroundColor: UIColor = .white
    
    public var dropDownSeperatorLineColor: UIColor = .lightGray
    
    public var dropDownBorderColor: UIColor = .lightGray
    
    public var dropDownBorderWidth: CGFloat = 0.5
    
    public var dropDownCornerRadius:CGFloat = 5
    
    public var dropDownShadowColor: UIColor = .darkGray
    
    public var dropDownShadowRadius: CGFloat = 4
    
    public var dropDownShadowOpacity:Float = 0.5
    
    public var dropDownShadowOffset:CGSize = CGSize(width: 0, height: 2)
    
    public var dropDownTitleColor:UIColor = .black
    
    public var dropDownSubtitleColor:UIColor = .lightGray
    
    public var dropDownTitleFontName:String = ""
    
    public var dropDownSubtitleFontName:String = ""
    
    public var dropDownSearchPlaceholder:String = ""
    
    public var dropDownNoDataMessage:String = ""
    
    public var dropDownArrowImage:UIImage? = nil
    
    public init() {
        
    }
}
