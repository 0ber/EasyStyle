import UIKit

extension UILabel {
    public func setStyle(_ style: LabelStyle) {
        _ = style.style(self)
    }
}

public struct LabelStyle: StyleProtocol {

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
    
    public static func aligment(_ value: NSTextAlignment) -> Style {
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
    
    // MARK: UIView methods
    public static func backgroundColor(_ value: UIColor) -> Style {
        return { label in
            label.backgroundColor = value
            return label
        }
    }
    
    public static func alpha(_ value: CGFloat) -> Style {
        return { label in
            label.alpha = value
            return label
        }
    }
    
    public static func tintColor(_ value: UIColor) -> Style {
        return { label in
            label.tintColor = value
            return label
        }
    }
    
    public static func tintAdjustmentMode(_ value:  UIViewTintAdjustmentMode) -> Style {
        return { label in
            label.tintAdjustmentMode = value
            return label
        }
    }
    
    public static func isHidden(_ value: Bool) -> Style {
        return { label in
            label.isHidden = value
            return label
        }
    }
    
    public static func isOpaque(_ value: Bool) -> Style {
        return { label in
            label.isOpaque = value
            return label
        }
    }
    
    public static func clipsToBounds(_ value: Bool) -> Style {
        return { label in
            label.clipsToBounds = value
            return label
        }
    }
    
    public static func clearsContextBeforeDrawing(_ value: Bool) -> Style {
        return { label in
            label.clearsContextBeforeDrawing = value
            return label
        }
    }
    
    public static func isUserInteractionEnabled(_ value: Bool) -> Style {
        return { label in
            label.isUserInteractionEnabled = value
            return label
        }
    }
    
    public static func isMultipleTouchEnabled(_ value: Bool) -> Style {
        return { label in
            label.isMultipleTouchEnabled = value
            return label
        }
    }
    
    public static func isExclusiveTouch(_ value: Bool) -> Style {
        return { label in
            label.isExclusiveTouch = value
            return label
        }
    }
    
    // MARK: CALayer methods
    public static func masksToBounds(_ value: Bool) -> Style {
        return { label in
            label.layer.masksToBounds = value
            return label
        }
    }
    
    public static func cornerRadius(_ value: CGFloat) -> Style {
        return { label in
            label.layer.cornerRadius = value
            return label
        }
    }
    
    public static func maskedCorners(_ value: CACornerMask) -> Style {
        return { label in
            label.layer.maskedCorners = value
            return label
        }
    }
    
    public static func borderWidth(_ value: CGFloat) -> Style {
        return { label in
            label.layer.borderWidth = value
            return label
        }
    }
    
    public static func borderColor(_ value: UIColor) -> Style {
        return { label in
            label.layer.borderColor = value.cgColor
            return label
        }
    }
    
    public static func shadowOpacity(_ value: Float) -> Style {
        return { label in
            label.layer.shadowOpacity = value
            return label
        }
    }
    
    public static func shadowRadius(_ value: CGFloat) -> Style {
        return { label in
            label.layer.shadowRadius = value
            return label
        }
    }
    
    public static func layerShadowOffset(_ value: CGSize) -> Style {
        return { label in
            label.layer.shadowOffset = value
            return label
        }
    }
    
    public static func layerShadowColor(_ value: UIColor) -> Style {
        return { label in
            label.layer.shadowColor = value.cgColor
            return label
        }
    }
    
    public static func shadowPath(_ value: CGPath) -> Style {
        return { label in
            label.layer.shadowPath = value
            return label
        }
    }
}
