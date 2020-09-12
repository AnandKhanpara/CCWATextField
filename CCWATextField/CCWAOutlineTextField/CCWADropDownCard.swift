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

class CCWADropDownCardStyle1TableViewCell: UITableViewCell {
    
    lazy var lableTitle:UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize: 14)
        lable.textColor = .black
        return lable
    }()
    
    lazy var viewBG:UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(viewBG)
        
        viewBG.addSubview(lableTitle)
        
        NSLayoutConstraint.activate([
            
            viewBG.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            viewBG.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            viewBG.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            viewBG.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            viewBG.heightAnchor.constraint(equalToConstant: 36),

            lableTitle.topAnchor.constraint(equalTo: viewBG.topAnchor, constant: 10),
            lableTitle.leadingAnchor.constraint(equalTo: viewBG.leadingAnchor, constant: 15),
            lableTitle.trailingAnchor.constraint(equalTo: viewBG.trailingAnchor, constant: -15),
            lableTitle.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor, constant: -10),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}


class CCWADropDownCardStyle2TableViewCell: UITableViewCell {
    
    lazy var stackVertical:UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 3
        stackView.addArrangedSubview(lableTitle)
        stackView.addArrangedSubview(lableSubtitle)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var lableTitle:UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize: 14)
        return lable
    }()
    
    lazy var lableSubtitle:UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.textColor = .lightGray
        return lable
    }()
    
    lazy var viewBG:UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(viewBG)
        viewBG.addSubview(stackVertical)
        
        NSLayoutConstraint.activate([
            
            viewBG.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            viewBG.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            viewBG.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            viewBG.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            viewBG.heightAnchor.constraint(equalToConstant: 53),
            
            stackVertical.topAnchor.constraint(equalTo: viewBG.topAnchor, constant: 10),
            stackVertical.leadingAnchor.constraint(equalTo: viewBG.leadingAnchor, constant: 15),
            stackVertical.trailingAnchor.constraint(equalTo: viewBG.trailingAnchor, constant: -15),
            stackVertical.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor, constant: -10),
            
            lableTitle.heightAnchor.constraint(equalToConstant: 16),
            
            lableSubtitle.heightAnchor.constraint(equalToConstant: 14)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}


class CCWADropDownCardStyle3TableViewCell: UITableViewCell {
    
    lazy var stackVertical:UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 3
        stackView.addArrangedSubview(lableTitle)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var lableTitle:UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize: 14)
        return lable
    }()
    
    lazy var imgView:CCWAUIImageView = {
        let imageView = CCWAUIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var viewBG:UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(viewBG)
        viewBG.addSubview(imgView)
        viewBG.addSubview(stackVertical)
        
        NSLayoutConstraint.activate([
            
            viewBG.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            viewBG.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            viewBG.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            viewBG.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            viewBG.heightAnchor.constraint(equalToConstant: 53),
            
            imgView.topAnchor.constraint(equalTo: stackVertical.topAnchor, constant: 0),
            imgView.leadingAnchor.constraint(equalTo: viewBG.leadingAnchor, constant: 15),
            imgView.trailingAnchor.constraint(equalTo: stackVertical.leadingAnchor, constant: -15),
            imgView.bottomAnchor.constraint(equalTo: stackVertical.bottomAnchor, constant: 0),
            imgView.widthAnchor.constraint(equalTo: imgView.heightAnchor, multiplier: 1, constant: 0),
            
            stackVertical.topAnchor.constraint(equalTo: viewBG.topAnchor, constant: 10),
            stackVertical.trailingAnchor.constraint(equalTo: viewBG.trailingAnchor, constant: -15),
            stackVertical.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor, constant: -10),
            
            lableTitle.heightAnchor.constraint(equalToConstant: 16),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}


class CCWADropDownCardStyle4TableViewCell: UITableViewCell {
    
    lazy var stackVertical:UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 3
        stackView.addArrangedSubview(lableTitle)
        stackView.addArrangedSubview(lableSubtitle)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var lableTitle:UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize: 14)
        return lable
    }()
    
    lazy var lableSubtitle:UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.textColor = .lightGray
        return lable
    }()
    
    lazy var imgView:CCWAUIImageView = {
        let imageView = CCWAUIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var viewBG:UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(viewBG)
        viewBG.addSubview(imgView)
        viewBG.addSubview(stackVertical)
        
        NSLayoutConstraint.activate([
            
            viewBG.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            viewBG.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            viewBG.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            viewBG.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            viewBG.heightAnchor.constraint(equalToConstant: 53),
            
            imgView.topAnchor.constraint(equalTo: stackVertical.topAnchor, constant: 0),
            imgView.leadingAnchor.constraint(equalTo: viewBG.leadingAnchor, constant: 15),
            imgView.trailingAnchor.constraint(equalTo: stackVertical.leadingAnchor, constant: -15),
            imgView.bottomAnchor.constraint(equalTo: stackVertical.bottomAnchor, constant: 0),
            imgView.widthAnchor.constraint(equalTo: imgView.heightAnchor, multiplier: 1, constant: 0),
            
            stackVertical.topAnchor.constraint(equalTo: viewBG.topAnchor, constant: 10),
            stackVertical.trailingAnchor.constraint(equalTo: viewBG.trailingAnchor, constant: -15),
            stackVertical.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor, constant: -10),
            
            lableTitle.heightAnchor.constraint(equalToConstant: 16),
            
            lableSubtitle.heightAnchor.constraint(equalToConstant: 14)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

