//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.


import UIKit

public class CCWATextFieldViewProperty: CCWATextFieldSetUpProperty {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpCCWATOutlineTextField()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpCCWATOutlineTextField()
    }
}


