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
    
    lazy var lableNoDataAvailabel:UILabel = {
       let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.textColor = .lightGray
        lable.textAlignment = .center
        lable.text = "No Data Available!"
        return lable
    }()
    
    var ccwaTextField:CCWATextField?
    
    var arrCCWADropDownModel = [CCWADropDownModel]()
    
    let cellIdentifierCCWADropDownCardStyle1TableViewCell = "CCWADropDownCardStyle1TableViewCell"
    let cellIdentifierCCWADropDownCardStyle2TableViewCell = "CCWADropDownCardStyle2TableViewCell"
    let cellIdentifierCCWADropDownCardStyle3TableViewCell = "CCWADropDownCardStyle3TableViewCell"
    let cellIdentifierCCWADropDownCardStyle4TableViewCell = "CCWADropDownCardStyle4TableViewCell"

    init(frame: CGRect = .zero, arrCCWADropDownModel:[CCWADropDownModel] = [CCWADropDownModel]()) {
        super.init(frame: frame)
        
        if arrCCWADropDownModel.count > 0 {
            self.arrCCWADropDownModel = arrCCWADropDownModel
        }
        
        addSubview(lableNoDataAvailabel)
        addSubview(tableViewDropDown)
        
        NSLayoutConstraint.activate([
            tableViewDropDown.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            tableViewDropDown.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            tableViewDropDown.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            tableViewDropDown.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            lableNoDataAvailabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            lableNoDataAvailabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            lableNoDataAvailabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            lableNoDataAvailabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
        ])
        
        tableViewDropDown.register(CCWADropDownCardStyle1TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle1TableViewCell)
        tableViewDropDown.register(CCWADropDownCardStyle2TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle2TableViewCell)
        tableViewDropDown.register(CCWADropDownCardStyle3TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle3TableViewCell)
        tableViewDropDown.register(CCWADropDownCardStyle4TableViewCell.self, forCellReuseIdentifier: cellIdentifierCCWADropDownCardStyle4TableViewCell)

        if self.arrCCWADropDownModel.count > 0 {
            tableViewDropDown.isHidden = false
            lableNoDataAvailabel.isHidden = true
        }else {
            tableViewDropDown.isHidden = true
            lableNoDataAvailabel.isHidden = false
        }
        
        OperationQueue.main.addOperation { [weak self] in
            guard let self = self else { return }
            self.tableViewDropDown.reloadData()
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func shadow(frame:CGRect = .zero) {
        guard let ccwaTextField = ccwaTextField else { return }
        tableViewDropDown.layer.cornerRadius = ccwaTextField.setDropDownCornerRadius
        backgroundColor = ccwaTextField.setDropDownBackGroundColor
        
        layer.cornerRadius = ccwaTextField.setDropDownCornerRadius
        layer.borderWidth = ccwaTextField.setDropDownBorderWidth
        layer.borderColor = ccwaTextField.setDropDownBorderColor.cgColor
        
        layer.shadowPath = UIBezierPath(roundedRect: frame, cornerRadius: ccwaTextField.setDropDownCornerRadius).cgPath
        layer.shadowColor = ccwaTextField.setDropDownShadowColor.cgColor
        layer.shadowOffset = ccwaTextField.setDropDownShadowOffset
        layer.shadowRadius = ccwaTextField.setDropDownShadowRadius
        layer.shadowOpacity = ccwaTextField.setDropDownShadowOpacity
    }
}

extension CCWADropDownView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCCWADropDownModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let value = arrCCWADropDownModel[indexPath.row]
        value.title = "\(indexPath.row)"
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle4TableViewCell, for: indexPath) as? CCWADropDownCardStyle4TableViewCell, (value.image != nil || value.imageURL != nil), let subtitle = value.subtitle, subtitle.isEmpty == false {
            cell.lableTitle.text = value.title
            cell.lableSubtitle.text = subtitle
            if let image = value.image {
                cell.imgView.image = image
            }
            if let url = value.imageURL {
                cell.imgView.url = url
            }
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            return cell
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle3TableViewCell, for: indexPath) as? CCWADropDownCardStyle3TableViewCell, (value.image != nil || value.imageURL != nil) {
            cell.lableTitle.text = value.title
            if let image = value.image {
                cell.imgView.image = image
            }
            if let url = value.imageURL {
                cell.imgView.url = url
            }
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            return cell
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle2TableViewCell, for: indexPath) as? CCWADropDownCardStyle2TableViewCell, let subtitle = value.subtitle, subtitle.isEmpty == false {
            cell.lableTitle.text = value.title
            cell.lableSubtitle.text = subtitle
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            return cell
        }
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifierCCWADropDownCardStyle1TableViewCell, for: indexPath) as? CCWADropDownCardStyle1TableViewCell {
            cell.lableTitle.text = value.title
            cell.viewSeperator.backgroundColor = ccwaTextField?.setDropDownSeperatorLineColor
            return cell
        }
        
        return  UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        ccwaTextField?.text = arrCCWADropDownModel[indexPath.row].title
        ccwaTextField?.removeDropDown(ccwaTextField?.text?.isEmpty ?? false)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        print(cell.frame.size)
    }
    
}
