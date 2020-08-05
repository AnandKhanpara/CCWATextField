//
//  Delay.swift
//  CustomTextField
//
//  Created by Zerones on 30/07/20.
//  Copyright © 2020 Zerones. All rights reserved.
//

import Foundation
import UIKit

class Delay {

    @discardableResult
    func time(_ second:TimeInterval, complition: @escaping () -> ()) -> Delay {
        DispatchQueue.main.asyncAfter(deadline: .now() + second) { complition() }
        return self
    }

}

