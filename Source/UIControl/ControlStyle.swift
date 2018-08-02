import UIKit

extension UIControl {
    public func setStyle(_ style: ControlStyle) {
        _ = style.style(self)
    }
}

public struct ControlStyle: StyleProtocol {
    
    public typealias ViewType = UIControl
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: ControlStyle { return ControlStyle(style: { $0 }) }
    
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
