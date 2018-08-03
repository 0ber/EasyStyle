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

    public static var create: LabelStyle { return LabelStyle(style: { $0 }) }
    
    // MARK: UILabel methods
    public static func text(_ value: String) -> Style {
        return { label in
            label.text = value
            return label
        }
    }
    
    public static func attributedText(_ value: NSAttributedString) -> Style {
        return { label in
            label.attributedText = value
            return label
        }
    }
    
    public static func font(_ value: UIFont) -> Style {
        return { label in
            label.font = value
            return label
        }
    }
    
    public static func textColor(_ value: UIColor) -> Style {
        return { label in
            label.textColor = value
            return label
        }
    }
    
    public static func textAligment(_ value: NSTextAlignment) -> Style {
        return { label in
            label.textAlignment = value
            return label
        }
    }
    
    public static func lineBreakMode(_ value: NSLineBreakMode) -> Style {
        return { label in
            label.lineBreakMode = value
            return label
        }
    }
    
    public static func baselineAdjustment(_ value: UIBaselineAdjustment) -> Style {
        return { label in
            label.baselineAdjustment = value
            return label
        }
    }
    
    public static func numberOfLines(_ value: Int) -> Style {
        return { label in
            label.numberOfLines = value
            return label
        }
    }
    
    public static func highlightedTextColor(_ value: UIColor) -> Style {
        return { label in
            label.highlightedTextColor = value
            return label
        }
    }
    
    public static func shadowColor(_ value: UIColor) -> Style {
        return { label in
            label.shadowColor = value
            return label
        }
    }
    
    public static func shadowOffset(_ value: CGSize) -> Style {
        return { label in
            label.shadowOffset = value
            return label
        }
    }
    
    public static func isEnabled(_ value: Bool) -> Style {
        return { label in
            label.isEnabled = value
            return label
        }
    }
    
    public static func adjustsFontSizeToFitWidth(_ value: Bool) -> Style {
        return { label in
            label.adjustsFontSizeToFitWidth = value
            return label
        }
    }
    
    public static func allowsDefaultTighteningForTruncation(_ value: Bool) -> Style {
        return { label in
            label.allowsDefaultTighteningForTruncation = value
            return label
        }
    }
    
    public static func minimumScaleFactor(_ value: CGFloat) -> Style {
        return { label in
            label.minimumScaleFactor = value
            return label
        }
    }
    
    public static func isHighlighted(_ value: Bool) -> Style {
        return { label in
            label.isHighlighted = value
            return label
        }
    }
    
    public static func preferredMaxLayoutWidth(_ value: CGFloat) -> Style {
        return { label in
            label.preferredMaxLayoutWidth = value
            return label
        }
    }
}
