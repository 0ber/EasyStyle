import UIKit

extension UILabel {
    public func setStyle(_ style: LabelStyle) {
        _ = style.style(self)
    }
}

public struct LabelStyle: StyleProtocol, ViewStyleCompatability {

    public typealias ViewType = UILabel

    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }

    // MARK: UILabel methods
    public static func text(_ value: String) -> LabelStyle {
        return LabelStyle(style: { label in
            label.text = value
            return label
        })
    }
    
    public static func attributedText(_ value: NSAttributedString) -> LabelStyle {
        return LabelStyle(style: { label in
            label.attributedText = value
            return label
        })
    }
    
    public static func font(_ value: UIFont) -> LabelStyle {
        return LabelStyle(style: { label in
            label.font = value
            return label
        })
    }
    
    public static func textColor(_ value: UIColor) -> LabelStyle {
        return LabelStyle(style: { label in
            label.textColor = value
            return label
        })
    }
    
    public static func textAligment(_ value: NSTextAlignment) -> LabelStyle {
        return LabelStyle(style: { label in
            label.textAlignment = value
            return label
        })
    }
    
    public static func lineBreakMode(_ value: NSLineBreakMode) -> LabelStyle {
        return LabelStyle(style: { label in
            label.lineBreakMode = value
            return label
        })
    }
    
    public static func baselineAdjustment(_ value: UIBaselineAdjustment) -> LabelStyle {
        return LabelStyle(style: { label in
            label.baselineAdjustment = value
            return label
        })
    }
    
    public static func numberOfLines(_ value: Int) -> LabelStyle {
        return LabelStyle(style: { label in
            label.numberOfLines = value
            return label
        })
    }
    
    public static func highlightedTextColor(_ value: UIColor) -> LabelStyle {
        return LabelStyle(style: { label in
            label.highlightedTextColor = value
            return label
        })
    }
    
    public static func shadowColor(_ value: UIColor) -> LabelStyle {
        return LabelStyle(style: { label in
            label.shadowColor = value
            return label
        })
    }
    
    public static func shadowOffset(_ value: CGSize) -> LabelStyle {
        return LabelStyle(style: { label in
            label.shadowOffset = value
            return label
        })
    }
    
    public static func isEnabled(_ value: Bool) -> LabelStyle {
        return LabelStyle(style: { label in
            label.isEnabled = value
            return label
        })
    }
    
    public static func adjustsFontSizeToFitWidth(_ value: Bool) -> LabelStyle {
        return LabelStyle(style: { label in
            label.adjustsFontSizeToFitWidth = value
            return label
        })
    }
    
    public static func allowsDefaultTighteningForTruncation(_ value: Bool) -> LabelStyle {
        return LabelStyle(style: { label in
            label.allowsDefaultTighteningForTruncation = value
            return label
        })
    }
    
    public static func minimumScaleFactor(_ value: CGFloat) -> LabelStyle {
        return LabelStyle(style: { label in
            label.minimumScaleFactor = value
            return label
        })
    }
    
    public static func isHighlighted(_ value: Bool) -> LabelStyle {
        return LabelStyle(style: { label in
            label.isHighlighted = value
            return label
        })
    }
    
    public static func preferredMaxLayoutWidth(_ value: CGFloat) -> LabelStyle {
        return LabelStyle(style: { label in
            label.preferredMaxLayoutWidth = value
            return label
        })
    }
}
