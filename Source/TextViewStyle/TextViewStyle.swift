import UIKit

extension UITextView {
    public func setStyle(_ style: TextViewStyle) {
        _ = style.style(self)
    }
}

public struct TextViewStyle: StyleProtocol, ViewStyleCompatability, ScrollViewStyleCompatability {
    
    public typealias ViewType = UITextView
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: TextViewStyle { return TextViewStyle(style: { $0 }) }
    
    // MARK: UITextView
    
    public static func text(_ value: String) -> Style {
        return { textView in
            textView.text = value
            return textView
        }
    }
    
    public static func attributedText(_ value: NSAttributedString) -> Style {
        return { textView in
            textView.attributedText = value
            return textView
        }
    }
    
    public static func font(_ value: UIFont) -> Style {
        return { textView in
            textView.font = value
            return textView
        }
    }
    
    public static func textColor(_ value: UIColor) -> Style {
        return { textView in
            textView.textColor = value
            return textView
        }
    }
    
    public static func isEditable(_ value: Bool) -> Style {
        return { textView in
            textView.isEditable = value
            return textView
        }
    }
    
    public static func allowsEditingTextAttributes(_ value: Bool) -> Style {
        return { textView in
            textView.allowsEditingTextAttributes = value
            return textView
        }
    }
    
    public static func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Style {
        return { textView in
            textView.dataDetectorTypes = value
            return textView
        }
    }
    
    public static func textAlignment(_ value: NSTextAlignment) -> Style {
        return { textView in
            textView.textAlignment = value
            return textView
        }
    }
    
    public static func typingAttributes(_ value: [String: Any]) -> Style {
        return { textView in
            textView.typingAttributes = value
            return textView
        }
    }
    
    public static func linkTextAttributes(_ value: [String: Any]) -> Style {
        return { textView in
            textView.linkTextAttributes = value
            return textView
        }
    }
    
    public static func textContainerInset(_ value: UIEdgeInsets) -> Style {
        return { textView in
            textView.textContainerInset = value
            return textView
        }
    }
    
    public static func selectedRange(_ value: NSRange) -> Style {
        return { textView in
            textView.selectedRange = value
            return textView
        }
    }
    
    public static func clearsOnInsertion(_ value: Bool) -> Style {
        return { textView in
            textView.clearsOnInsertion = value
            return textView
        }
    }
    
    public static func isSelectable(_ value: Bool) -> Style {
        return { textView in
            textView.isSelectable = value
            return textView
        }
    }
    
    public static func inputView(_ value: UIView) -> Style {
        return { textView in
            textView.inputView = value
            return textView
        }
    }
    
    public static func inputAccessoryView(_ value: UIView) -> Style {
        return { textView in
            textView.inputAccessoryView = value
            return textView
        }
    }
}
