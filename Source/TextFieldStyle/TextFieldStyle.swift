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
    
    public static var create: TextFieldStyle { return TextFieldStyle(style: { $0 }) }
    
    // MARK: TextField
    public static func text(_ value: String) -> Style {
        return { textField in
            textField.text = value
            return textField
        }
    }
    
    public static func attributedText(_ value: NSAttributedString) -> Style {
        return { textField in
            textField.attributedText = value
            return textField
        }
    }
    
    public static func placeholder(_ value: String) -> Style {
        return { textField in
            textField.placeholder = value
            return textField
        }
    }
    
    public static func attributedPlaceholder(_ value: NSAttributedString) -> Style {
        return { textField in
            textField.attributedText = value
            return textField
        }
    }
    
    public static func defaultTextAttributes(_ value: [String: Any]) -> Style {
        return { textField in
            textField.defaultTextAttributes = value
            return textField
        }
    }
    
    public static func font(_ value: UIFont) -> Style {
        return { textField in
            textField.font = value
            return textField
        }
    }
    
    public static func textColor(_ value: UIColor) -> Style {
        return { textField in
            textField.textColor = value
            return textField
        }
    }
    
    public static func textAlignment(_ value: NSTextAlignment) -> Style {
        return { textField in
            textField.textAlignment = value
            return textField
        }
    }
    
    public static func typingAttributes(_ value: [String: Any]) -> Style {
        return { textField in
            textField.typingAttributes = value
            return textField
        }
    }
    
    public static func adjustsFontSizeToFitWidth(_ value: Bool) -> Style {
        return { textField in
            textField.adjustsFontSizeToFitWidth = value
            return textField
        }
    }
    
    public static func minimumFontSize(_ value: CGFloat) -> Style {
        return { textField in
            textField.minimumFontSize = value
            return textField
        }
    }
    
    public static func clearsOnBeginEditing(_ value: Bool) -> Style {
        return { textField in
            textField.clearsOnBeginEditing = value
            return textField
        }
    }
    
    public static func clearsOnInsertion(_ value: Bool) -> Style {
        return { textField in
            textField.clearsOnInsertion = value
            return textField
        }
    }
    
    public static func allowsEditingTextAttributes(_ value: Bool) -> Style {
        return { textField in
            textField.allowsEditingTextAttributes = value
            return textField
        }
    }
    
    public static func borderStyle(_ value: UITextBorderStyle) -> Style {
        return { textField in
            textField.borderStyle = value
            return textField
        }
    }
    
    public static func background(_ value: UIImage) -> Style {
        return { textField in
            textField.background = value
            return textField
        }
    }
    
    public static func disabledBackground(_ value: UIImage) -> Style {
        return { textField in
            textField.disabledBackground = value
            return textField
        }
    }
    
    public static func clearButtonMode(_ value: UITextFieldViewMode) -> Style {
        return { textField in
            textField.clearButtonMode = value
            return textField
        }
    }
    
    public static func leftView(_ value: UIView) -> Style {
        return { textField in
            textField.leftView = value
            return textField
        }
    }
    
    public static func leftViewMode(_ value: UITextFieldViewMode) -> Style {
        return { textField in
            textField.leftViewMode = value
            return textField
        }
    }
    
    public static func rightView(_ value: UIView) -> Style {
        return { textField in
            textField.rightView = value
            return textField
        }
    }
    
    public static func rightViewMode(_ value: UITextFieldViewMode) -> Style {
        return { textField in
            textField.rightViewMode = value
            return textField
        }
    }
    
    public static func inputView(_ value: UIView) -> Style {
        return { textField in
            textField.inputView = value
            return textField
        }
    }
    
    public static func inputAccessoryView(_ value: UIView) -> Style {
        return { textField in
            textField.inputAccessoryView = value
            return textField
        }
    }
}
