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
    
    // MARK: UITextView
    
    public static func text(_ value: String) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.text = value
            return textView
        })
    }
    
    public static func attributedText(_ value: NSAttributedString) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.attributedText = value
            return textView
        })
    }
    
    public static func font(_ value: UIFont) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.font = value
            return textView
        })
    }
    
    public static func textColor(_ value: UIColor) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.textColor = value
            return textView
        })
    }
    
    public static func isEditable(_ value: Bool) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.isEditable = value
            return textView
        })
    }
    
    public static func allowsEditingTextAttributes(_ value: Bool) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.allowsEditingTextAttributes = value
            return textView
        })
    }
    
    public static func dataDetectorTypes(_ value: UIDataDetectorTypes) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.dataDetectorTypes = value
            return textView
        })
    }
    
    public static func textAlignment(_ value: NSTextAlignment) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.textAlignment = value
            return textView
        })
    }
    
    public static func typingAttributes(_ value: [String : Any]) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.typingAttributes = convertToNSAttributedStringKeyDictionary(value)
            return textView
        })
    }
    
    public static func linkTextAttributes(_ value: [String : Any]) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.linkTextAttributes = convertToOptionalNSAttributedStringKeyDictionary(value)
            return textView
        })
    }
    
    public static func textContainerInset(_ value: UIEdgeInsets) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.textContainerInset = value
            return textView
        })
    }
    
    public static func selectedRange(_ value: NSRange) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.selectedRange = value
            return textView
        })
    }
    
    public static func clearsOnInsertion(_ value: Bool) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.clearsOnInsertion = value
            return textView
        })
    }
    
    public static func isSelectable(_ value: Bool) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.isSelectable = value
            return textView
        })
    }
    
    public static func inputView(_ value: UIView) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.inputView = value
            return textView
        })
    }
    
    public static func inputAccessoryView(_ value: UIView) -> TextViewStyle {
        return TextViewStyle(style: { textView in
            textView.inputAccessoryView = value
            return textView
        })
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToNSAttributedStringKeyDictionary(_ input: [String: Any]) -> [NSAttributedString.Key: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}
