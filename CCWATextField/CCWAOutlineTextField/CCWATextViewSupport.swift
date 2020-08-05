//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.


import UIKit

extension String {
    
    func empty() -> Bool {
        return (self == "" || self.trimmingCharacters(in: .whitespacesAndNewlines) == "" || self.isEmpty == true)
    }
}


extension UIView {
    func findViewController() -> UIViewController? {
        if let nextResponder = self.next as? UIViewController {
            return nextResponder
        } else if let nextResponder = self.next as? UIView {
            return nextResponder.findViewController()
        } else {
            return nil
        }
    }
}



/*
 extension UIView {

     func addTapGesture(action : @escaping ()->Void ){
         let tap = MyTapGestureRecognizer(target: self , action: #selector(self.handleTap(_:)))
         tap.action = action
         tap.numberOfTapsRequired = 1

         self.addGestureRecognizer(tap)
         self.isUserInteractionEnabled = true

     }
     @objc func handleTap(_ sender: MyTapGestureRecognizer) {
         sender.action!()
     }
 }

 class MyTapGestureRecognizer: UITapGestureRecognizer {
     var action : (()->Void)? = nil
 }
 */

