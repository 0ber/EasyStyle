import UIKit

extension UITextField {
    public func setStyle(_ style: TextFieldStyle) {
        _ = style.style(self)
    }
}

public struct TextFieldStyle: StyleProtocol {
    
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
    
    // MARK: UIControl
    public static func isEnabled(_ value: Bool) -> Style {
        return { contol in
            contol.isEnabled = value
            return contol
        }
    }
    
    public static func isSelected(_ value: Bool) -> Style {
        return { contol in
            contol.isSelected = value
            return contol
        }
    }
    
    public static func isHighlighted(_ value: Bool) -> Style {
        return { contol in
            contol.isHighlighted = value
            return contol
        }
    }
    
    public static func contentVerticalAlignment(_ value: UIControlContentVerticalAlignment) -> Style {
        return { contol in
            contol.contentVerticalAlignment = value
            return contol
        }
    }
    
    public static func contentHorizontalAlignment(_ value: UIControlContentHorizontalAlignment) -> Style {
        return { contol in
            contol.contentHorizontalAlignment = value
            return contol
        }
    }
    
    // MARK: UIView methods
    public static func backgroundColor(_ value: UIColor) -> Style {
        return { view in
            view.backgroundColor = value
            return view
        }
    }
    
    public static func alpha(_ value: CGFloat) -> Style {
        return { view in
            view.alpha = value
            return view
        }
    }
    
    public static func tintColor(_ value: UIColor) -> Style {
        return { view in
            view.tintColor = value
            return view
        }
    }
    
    public static func tintAdjustmentMode(_ value:  UIViewTintAdjustmentMode) -> Style {
        return { view in
            view.tintAdjustmentMode = value
            return view
        }
    }
    
    public static func isHidden(_ value: Bool) -> Style {
        return { view in
            view.isHidden = value
            return view
        }
    }
    
    public static func isOpaque(_ value: Bool) -> Style {
        return { view in
            view.isOpaque = value
            return view
        }
    }
    
    public static func clipsToBounds(_ value: Bool) -> Style {
        return { view in
            view.clipsToBounds = value
            return view
        }
    }
    
    public static func clearsContextBeforeDrawing(_ value: Bool) -> Style {
        return { view in
            view.clearsContextBeforeDrawing = value
            return view
        }
    }
    
    public static func isUserInteractionEnabled(_ value: Bool) -> Style {
        return { view in
            view.isUserInteractionEnabled = value
            return view
        }
    }
    
    public static func isMultipleTouchEnabled(_ value: Bool) -> Style {
        return { view in
            view.isMultipleTouchEnabled = value
            return view
        }
    }
    
    public static func isExclusiveTouch(_ value: Bool) -> Style {
        return { view in
            view.isExclusiveTouch = value
            return view
        }
    }
    
    // MARK: CALayer methods
    public static func masksToBounds(_ value: Bool) -> Style {
        return { view in
            view.layer.masksToBounds = value
            return view
        }
    }
    
    public static func cornerRadius(_ value: CGFloat) -> Style {
        return { view in
            view.layer.cornerRadius = value
            return view
        }
    }
    
    public static func maskedCorners(_ value: CACornerMask) -> Style {
        return { view in
            view.layer.maskedCorners = value
            return view
        }
    }
    
    public static func borderWidth(_ value: CGFloat) -> Style {
        return { view in
            view.layer.borderWidth = value
            return view
        }
    }
    
    public static func borderColor(_ value: UIColor) -> Style {
        return { view in
            view.layer.borderColor = value.cgColor
            return view
        }
    }
    
    public static func shadowOpacity(_ value: Float) -> Style {
        return { view in
            view.layer.shadowOpacity = value
            return view
        }
    }
    
    public static func shadowRadius(_ value: CGFloat) -> Style {
        return { view in
            view.layer.shadowRadius = value
            return view
        }
    }
    
    public static func layerShadowOffset(_ value: CGSize) -> Style {
        return { view in
            view.layer.shadowOffset = value
            return view
        }
    }
    
    public static func layerShadowColor(_ value: UIColor) -> Style {
        return { view in
            view.layer.shadowColor = value.cgColor
            return view
        }
    }
    
    public static func shadowPath(_ value: CGPath) -> Style {
        return { view in
            view.layer.shadowPath = value
            return view
        }
    }
}
