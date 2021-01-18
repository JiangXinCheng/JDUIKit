//
//  JDUIKit.swift
//  JD_EmptySwiftApp
//
//  Created by JD on 2020/7/13.
//  Copyright © 2020 JD. All rights reserved.
//

import UIKit
import QMUIKit
class JDUIKit: NSObject {
    
    //MARK: - textField
    static func createTextField(frame: CGRect? = .zero,
                                backgroundColor: UIColor? = .clear,
                                text: String? = "",
                                placeholder: String? = "") -> UITextField {
        let textField = UITextField.init()
        
        if let tfFrame : CGRect = frame {
            textField.frame = tfFrame
        }
        
        if let tfBackgroundColor : UIColor = backgroundColor {
            textField.backgroundColor = tfBackgroundColor
        }
        
        if let tfText = text {
            textField.text = tfText
        }
        
        if let tfPlaceholder = placeholder {
            textField.placeholder = tfPlaceholder
        }
        
        return textField
    }
    
    //MARK: - imageView
    static func createImageView(frame: CGRect? = .zero,
                                backgroundColor: UIColor? = .clear,
                                imageName: String? = "") -> UIImageView {
        
        let imageView : UIImageView = UIImageView.init()
        
        if let imageViewFrame : CGRect = frame {
            imageView.frame = imageViewFrame
        }
        
        if let imageViewBackgroundColor : UIColor = backgroundColor {
            imageView.backgroundColor = imageViewBackgroundColor
        }
        
        if imageName!.count > 0 {
            imageView.image = UIImage.init(named: imageName!)
        }
        
        return imageView
    }
    
    //MARK: - label
    static func createLabel(frame: CGRect? = .zero,
                             title: String? = "",
                             titleColor: UIColor? = .black,
                             backgroundColor: UIColor? = .clear,
                             font: UIFont? = UIFont.systemFont(ofSize: 15),
                             textAlignment: NSTextAlignment? = .center) -> UILabel {
        
        let label : UILabel = UILabel.init()
        
        if let labelFrame : CGRect = frame {
            label.frame = labelFrame
        }
        
        if let labelTitle : String = title {
            label.text = labelTitle
        }
        
        if let labelTextColor : UIColor = titleColor {
            label.textColor = labelTextColor
        }
        
        if let labelBackgroundColor : UIColor = backgroundColor {
            label.backgroundColor = labelBackgroundColor
        }
        
        if let labelFont : UIFont = font {
            label.font = labelFont
        }
        
        if let labelTextAlignment : NSTextAlignment = textAlignment {
            label.textAlignment = labelTextAlignment
        }
                
        return label
    }
    
    //MARK: - button
    static func createButton(frame : CGRect? = .zero,
                             title: String? = "",
                             titleColor: UIColor? = .blue,
                             backgroundColor: UIColor? = .clear,
                             font: UIFont? = UIFont.systemFont(ofSize: 15)) -> UIButton {
        
        let button : UIButton = UIButton.init(type: .custom)
        button.adjustsImageWhenHighlighted = false
        
        if let btnFrame : CGRect = frame {
            button.frame = btnFrame
        } else {
            button.frame = .zero
        }
        
        if let btnTitle : String = title {
            button.setTitle(btnTitle, for: .normal)
        }
        
        if let btnTitleColor : UIColor = titleColor {
            button.setTitleColor(btnTitleColor, for: .normal)
        }
        
        if let btnBackgroundColor : UIColor = backgroundColor {
            button.backgroundColor = btnBackgroundColor
        }
        
        if let btnFont : UIFont = font {
            button.titleLabel?.font = btnFont
        }
        
        return button
    }
    
}
