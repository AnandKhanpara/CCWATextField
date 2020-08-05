//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.


import UIKit

class CCWATextField: UITextField {
    var editingChanged : ((String) -> ())? = nil
    var editingDidBegin : ((String) -> ())? = nil
    var editingDidEnd : ((String) -> ())? = nil
}

