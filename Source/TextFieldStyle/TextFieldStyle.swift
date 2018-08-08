import UIKit

extension UITextField {
    public func setStyle(_ style: TextFieldStyle) {
        _ = style.style(self)
    }
}

public struct TextFieldStyle: StyleProtocol, ControlStyleCompatability, ViewStyleCompatability {
    
    public typealias ViewType = UITextField
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    // MARK: TextField
    public static func text(_ value: String)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.text = value
            return textField
        })
    }
    
    public static func attributedText(_ value: NSAttributedString)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.attributedText = value
            return textField
        })
    }
    
    public static func placeholder(_ value: String)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.placeholder = value
            return textField
        })
    }
    
    public static func attributedPlaceholder(_ value: NSAttributedString)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.attributedPlaceholder = value
            return textField
        })
    }
    
    public static func defaultTextAttributes(_ value: [String: Any])  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.defaultTextAttributes = value
            return textField
        })
    }
    
    public static func font(_ value: UIFont)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.font = value
            return textField
        })
    }
    
    public static func textColor(_ value: UIColor)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.textColor = value
            return textField
        })
    }
    
    public static func textAlignment(_ value: NSTextAlignment)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.textAlignment = value
            return textField
        })
    }
    
    public static func adjustsFontSizeToFitWidth(_ value: Bool)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.adjustsFontSizeToFitWidth = value
            return textField
        })
    }
    
    public static func minimumFontSize(_ value: CGFloat)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.minimumFontSize = value
            return textField
        })
    }
    
    public static func clearsOnBeginEditing(_ value: Bool)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.clearsOnBeginEditing = value
            return textField
        })
    }
    
    public static func clearsOnInsertion(_ value: Bool)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.clearsOnInsertion = value
            return textField
        })
    }
    
    public static func allowsEditingTextAttributes(_ value: Bool)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.allowsEditingTextAttributes = value
            return textField
        })
    }
    
    public static func borderStyle(_ value: UITextBorderStyle)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.borderStyle = value
            return textField
        })
    }
    
    public static func background(_ value: UIImage)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.background = value
            return textField
        })
    }
    
    public static func disabledBackground(_ value: UIImage)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.disabledBackground = value
            return textField
        })
    }
    
    public static func clearButtonMode(_ value: UITextFieldViewMode)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.clearButtonMode = value
            return textField
        })
    }
    
    public static func leftView(_ value: UIView)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.leftView = value
            return textField
        })
    }
    
    public static func leftViewMode(_ value: UITextFieldViewMode)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.leftViewMode = value
            return textField
        })
    }
    
    public static func rightView(_ value: UIView)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.rightView = value
            return textField
        })
    }
    
    public static func rightViewMode(_ value: UITextFieldViewMode)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.rightViewMode = value
            return textField
        })
    }
    
    public static func inputView(_ value: UIView)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.inputView = value
            return textField
        })
    }
    
    public static func inputAccessoryView(_ value: UIView)  -> TextFieldStyle {
        return TextFieldStyle(style: { textField in
            textField.inputAccessoryView = value
            return textField
        })
    }
}
