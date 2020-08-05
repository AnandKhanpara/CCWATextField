//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.


import UIKit

extension CCWAOutlineTextField {
    
    @discardableResult
    public func editingChanged(text: @escaping (String) -> ()) -> CCWAOutlineTextField {
        textFieldInput.editingChanged = text
        return self
    }
    
    @discardableResult
    public func editingDidBegin(text: @escaping (String) -> ()) -> CCWAOutlineTextField {
        textFieldInput.editingDidBegin = text
        return self
    }
    
    @discardableResult
    public func editingDidEnd(text: @escaping (String) -> ()) -> CCWAOutlineTextField {
        textFieldInput.editingDidEnd = text
        return self
    }
    
    @discardableResult
    public func touchUpInsideClear(touch: @escaping () -> ()) -> CCWAOutlineTextField {
        buttonClearText.touchUpInside = touch
        return self
    }
    
}
