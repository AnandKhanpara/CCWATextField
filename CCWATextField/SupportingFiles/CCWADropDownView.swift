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

class CCWADropDownView: UIView {
    
    lazy var tableViewDropDown:UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 5
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        
        return tableView
    }()
    
    lazy var textFieldSearch:CCWAUITextField = {
       let textField = CCWAUITextField()
        textField.delegate = self
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Search ...."
        textField.clipsToBounds = true
        textField.layer.cornerRadius = 5
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 50))
        textField.rightViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 50))
        textField.addTarget(self, action: #selector(textFieldSearch_editingChanged), for: .editingChanged)
        return textField
    }()
    
    lazy var labelNoDataAvailabel:UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .lightGray
        label.textAlignment = .center
        label.text = "No Data Availabel!"
        return label
    }()
    
    lazy var viewSearchSeperator:UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var ccwaTextField:CCWATextField?
    
    var arrCCWADropDownModel = [CCWADropDownModel]()
    
    var arrAllCCWADropDownModel = [CCWADropDownModel]()
    
    var dropDownMaximumHeight:CGFloat = 0
    
    var dropDownFrame:CGRect? = nil
    
    let cellIdentifierCCWADropDownCardStyle1TableViewCell = "CCWADropDownCardStyle1TableViewCell"
    let cellIdentifierCCWADropDownCardStyle2TableViewCell = "CCWADropDownCardStyle2TableViewCell"
    let cellIdentifierCCWADropDownCardStyle3TableViewCell = "CCWADropDownCardStyle3TableViewCell"
    let cellIdentifierCCWADropDownCardStyle4TableViewCell = "CCWADropDownCardStyle4TableViewCell"

    init(frame: CGRect = .zero, ccwaTextField:CCWATextField?, arrCCWADropDownModel:[CCWADropDownModel] = [CCWADropDownModel]()) {
        super.init(frame: frame)
        
        self.ccwaTextField = ccwaTextField
        
        if arrCCWADropDownModel.count > 0 {
            self.arrCCWADropDownModel = arrCCWADropDownModel
            self.arrAllCCWADropDownModel = arrCCWADropDownModel
        }
        
        addSubview(labelNoDataAvailabel)
        addSubview(tableViewDropDown)
        
        if ccwaTextField?.setFieldType == .dropDownSearch {
            addSubview(textFieldSearch)
            addSubview(viewSearchSeperator)
        }
        
        NSLayoutConstraint.activate([
            tableViewDropDown.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            tableViewDropDown.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            tableViewDropDown.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            labelNoDataAvailabel.topAnchor.constraint(equalTo: tableViewDropDown.topAnchor, constant: 0),
            labelNoDataAvailabel.leadingAnchor.constraint(equalTo: tableViewDropDown.leadingAnchor, constant: 0),
            labelNoDataAvailabel.trailingAnchor.constraint(equalTo: tableViewDropDown.trailingAnchor, constant: 0),
            labelNoDataAvailabel.bottomAnchor.constraint(equalTo: tableViewDropDown.bottomAnchor, constant: 0),
        ])
        
        if ccwaTextField?.setFieldType == .dropDownSearch {
            NSLayoutConstraint.activate([
                textFieldSearch.topAnchor.constraint(equalTo: topAnchor, constant: 0),
                textFieldSearch.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
                textFieldSearch.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
                textFieldSearch.bottomAnchor.constraint(equalTo: tableViewDropDown.topAnchor, constant: 0),
                textFieldSearch.heightAnchor.constraint(equalToConstant: 40),
                
                viewSearchSeperator.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
                viewSearchSeperator.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
                viewSearchSeperator.bottomAnchor.constraint(equalTo: textFieldSearch.bottomAnchor, constant: 0),
                viewSearchSeperator.heightAnchor.constraint(equalToConstant: 0.5),
            ])
        }else {
            tableViewDropDown.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        }
        
        tableViewDropDown.register(CCWADropDownCardStyle1TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle1TableViewCell)
        tableViewDropDown.register(CCWADropDownCardStyle2TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle2TableViewCell)
        tableViewDropDown.register(CCWADropDownCardStyle3TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle3TableViewCell)
        tableViewDropDown.register(CCWADropDownCardStyle4TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle4TableViewCell)

        noDataMessage()
        
        reloadDropDown()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func shadow(frame:CGRect = .zero) {
        guard let ccwaTextField = ccwaTextField else { return }
        
        if dropDownFrame == nil {
            dropDownFrame = frame
            dropDownMaximumHeight = frame.size.height
            setDropDwon()
        }
        
        layer.shadowPath = UIBezierPath(roundedRect: frame, cornerRadius: ccwaTextField.setDropDownCornerRadius).cgPath
        layer.shadowColor = ccwaTextField.setDropDownShadowColor.cgColor
        layer.shadowOffset = ccwaTextField.setDropDownShadowOffset
        layer.shadowRadius = ccwaTextField.setDropDownShadowRadius
        layer.shadowOpacity = ccwaTextField.setDropDownShadowOpacity
    }
    
    func setDropDwon() {
        guard let ccwaTextField = ccwaTextField else { return }
        tableViewDropDown.layer.cornerRadius = ccwaTextField.setDropDownCornerRadius
        viewSearchSeperator.backgroundColor = ccwaTextField.setDropDownSeperatorLineColor
        
        backgroundColor = ccwaTextField.setDropDownBackGroundColor
        
        layer.cornerRadius = ccwaTextField.setDropDownCornerRadius
        layer.borderWidth = ccwaTextField.setDropDownBorderWidth
        layer.borderColor = ccwaTextField.setDropDownBorderColor.cgColor
        
        if ccwaTextField.setDropDownSearchPlaceholder.empty() == false {
            textFieldSearch.placeholder = ccwaTextField.setDropDownSearchPlaceholder
        }
        
        if ccwaTextField.setDropDownNoDataMessage.empty() == false {
            labelNoDataAvailabel.text = ccwaTextField.setDropDownNoDataMessage
        }
        
        textFieldSearch.tintColor = ccwaTextField.setDropDownTitleColor.withAlphaComponent(0.5)
        labelNoDataAvailabel.textColor = ccwaTextField.setDropDownTitleColor.withAlphaComponent(0.5)
        textFieldSearch.textColor = ccwaTextField.setDropDownTitleColor
        
        textFieldSearch.attributedPlaceholder = NSAttributedString(string: textFieldSearch.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor: ccwaTextField.setDropDownTitleColor.withAlphaComponent(0.35)])
        
        if ccwaTextField.setDropDownTitleFontName.empty() == false {
            textFieldSearch.font = UIFont(name: ccwaTextField.setDropDownTitleFontName, size: 14)
        }
    }
    
    func reloadDropDown() {
        OperationQueue.main.addOperation { [weak self] in
            guard let self = self else { return }
            self.tableViewDropDown.reloadData()
        }
    }
    
    func noDataMessage() {
        if self.arrCCWADropDownModel.count > 0 {
            tableViewDropDown.isHidden = false
            labelNoDataAvailabel.isHidden = true
        }else {
            tableViewDropDown.isHidden = true
            labelNoDataAvailabel.isHidden = false
        }
    }
    
    func dropDownUpdateHeight() {
        let extraSpace = CGFloat(arrCCWADropDownModel.filter({ (($0.image != nil) || ($0.imageURL != nil) || (($0.subtitle ?? "").isEmpty == false)) == true }).count * 17)
        var count = arrCCWADropDownModel.count
        if count == 0 {
            count = 1
        }
        var heightDropDown :CGFloat = CGFloat(count * 36) + extraSpace
        if ccwaTextField?.fieldType == .dropDownSearch {
            heightDropDown += 40
        }
        ccwaTextField?.ccwaOutlineTFConstraint.dropDownViewHeight.constant = (heightDropDown < dropDownMaximumHeight ? heightDropDown : dropDownMaximumHeight)
        shadow(frame: CGRect(x: dropDownFrame?.origin.x ?? 0, y: dropDownFrame?.origin.y ?? 0, width: dropDownFrame?.size.width ?? 0, height: (heightDropDown < dropDownMaximumHeight ? heightDropDown : dropDownMaximumHeight)))
        noDataMessage()
    }
    
    @objc func textFieldSearch_editingChanged(_ sender:CCWAUITextField) {
        let search = sender.text ?? ""
        if search.empty() == true {
            arrCCWADropDownModel = arrAllCCWADropDownModel
            reloadDropDown()
        }else {
            if let ccwaTextField = ccwaTextField {
                let arrCCWADropDownModel = ccwaTextField.dropDownSearchEditingChanged?(ccwaTextField, arrAllCCWADropDownModel, sender.text ?? "")
                self.arrCCWADropDownModel = arrCCWADropDownModel ?? []
                reloadDropDown()
            }
        }
        dropDownUpdateHeight()
    }
}

extension CCWADropDownView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCCWADropDownModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let value = arrCCWADropDownModel[indexPath.row]
        //value.title = "\(indexPath.row)"
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle4TableViewCell, for: indexPath) as? CCWADropDownCardStyle4TableViewCell, (value.image != nil || value.imageURL != nil), let subtitle = value.subtitle, subtitle.isEmpty == false {
            cell.labelTitle.text = value.title
            cell.labelSubtitle.text = subtitle
            if let image = value.image {
                cell.imgView.image = image
            }
            if let url = value.imageURL {
                cell.imgView.url = url
            }
            if let titleFont = ccwaTextField?.setDropDownTitleFontName, titleFont.empty() == false {
                cell.labelTitle.font = UIFont(name: titleFont, size: cell.fontSizeTitle)
            }
            if let subtitleFont = ccwaTextField?.setDropDownSubtitleFontName, subtitleFont.empty() == false {
                cell.labelSubtitle.font = UIFont(name: subtitleFont, size: cell.fontSizeTitle)
            }
            cell.labelTitle.textColor = ccwaTextField?.setDropDownTitleColor
            cell.labelSubtitle.textColor = ccwaTextField?.setDropDownSubtitleColor
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            cell.viewSeperator.isHidden = (arrCCWADropDownModel.count - 1 == indexPath.row)
            return cell
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle3TableViewCell, for: indexPath) as? CCWADropDownCardStyle3TableViewCell, (value.image != nil || value.imageURL != nil) {
            cell.labelTitle.text = value.title
            if let image = value.image {
                cell.imgView.image = image
            }
            if let url = value.imageURL {
                cell.imgView.url = url
            }
            if let titleFont = ccwaTextField?.setDropDownTitleFontName, titleFont.empty() == false {
                cell.labelTitle.font = UIFont(name: titleFont, size: cell.fontSizeTitle)
            }
            cell.labelTitle.textColor = ccwaTextField?.setDropDownTitleColor
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            cell.viewSeperator.isHidden = (arrCCWADropDownModel.count - 1 == indexPath.row)
            return cell
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle2TableViewCell, for: indexPath) as? CCWADropDownCardStyle2TableViewCell, let subtitle = value.subtitle, subtitle.isEmpty == false {
            cell.labelTitle.text = value.title
            cell.labelSubtitle.text = subtitle
            if let titleFont = ccwaTextField?.setDropDownTitleFontName, titleFont.empty() == false {
                cell.labelTitle.font = UIFont(name: titleFont, size: cell.fontSizeTitle)
            }
            if let subtitleFont = ccwaTextField?.setDropDownSubtitleFontName, subtitleFont.empty() == false {
                cell.labelSubtitle.font = UIFont(name: subtitleFont, size: cell.fontSizeTitle)
            }
            cell.labelTitle.textColor = ccwaTextField?.setDropDownTitleColor
            cell.labelSubtitle.textColor = ccwaTextField?.setDropDownSubtitleColor
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            cell.viewSeperator.isHidden = (arrCCWADropDownModel.count - 1 == indexPath.row)
            return cell
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle1TableViewCell, for: indexPath) as? CCWADropDownCardStyle1TableViewCell {
            cell.labelTitle.text = value.title
            if let titleFont = ccwaTextField?.setDropDownTitleFontName, titleFont.empty() == false {
                cell.labelTitle.font = UIFont(name: titleFont, size: cell.fontSizeTitle)
            }
            cell.labelTitle.textColor = ccwaTextField?.setDropDownTitleColor
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            cell.viewSeperator.isHidden = (arrCCWADropDownModel.count - 1 == indexPath.row)
            return cell
        }
        
        return  UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = arrCCWADropDownModel[indexPath.row]
        ccwaTextField?.text = data.title
        ccwaTextField?.removeDropDown(ccwaTextField?.text?.isEmpty ?? false)
        if let ccwaTextField = ccwaTextField {
            ccwaTextField.dropDownDidSelectRow?(ccwaTextField, indexPath.row, data.value)
        }
    }
    
}


extension CCWADropDownView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
        return false
    }
    
}
