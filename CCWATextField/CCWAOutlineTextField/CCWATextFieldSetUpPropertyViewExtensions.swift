//  Created by Create Code With Anand
//  Copyright © 2020 CreateCodeWithAnand. All rights reserved.

import UIKit

extension CCWATextFieldSetUpProperty {
    
    internal func getViewMainBase() -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    internal func getViewSubBase() -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    internal func getViewBG() -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    internal func getViewActiveTitlePosition() -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    internal func getStackViewHorizontal() -> UIStackView {
        let stackView = UIStackView()
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(viewLeftSideImageViewBase)
        stackView.addArrangedSubview(viewTextFieldInputBase)
        stackView.addArrangedSubview(viewRightSideImageViewBase)
        
        NSLayoutConstraint.activate([
            viewLeftSideImageViewBase.widthAnchor.constraint(equalTo: viewLeftSideImageViewBase.heightAnchor, multiplier: 1),
        ])
        return stackView
    }
    
    internal func getImageViewLeftSideImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    internal func getViewLeftSideImageViewBase() -> UIView {
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
    }
    
    internal func getViewLeftSideSpace() -> UIView {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    internal func getViewRightSideImageViewBase() -> UIView {
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
    }
    
    internal func getButtonClearText() -> CCWAButton {
        let button = CCWAButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    internal func getViewTextFieldInputBase() -> UIView {
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
    }
    
    internal func getTextFieldInput() -> CCWATextField {
        let textField = CCWATextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.backgroundColor = .clear
        textField.placeholder = ""
        field = textField
        return textField
    }
    
    internal func getLabelPlaceholder() -> UILabel {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.backgroundColor = .clear
        label.minimumScaleFactor = 0.1
        label.adjustsFontSizeToFitWidth = true
        label.textColor = UIColor.gray.withAlphaComponent(0.5)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
