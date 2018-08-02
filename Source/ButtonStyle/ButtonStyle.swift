import UIKit

extension UIButton {
    public func setStyle(_ style: ButtonStyle) {
        _ = style.style(self)
    }
}

public struct ButtonStyle: StyleProtocol {
    public typealias ViewType = UIButton
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: ButtonStyle { return ButtonStyle(style: {  $0 }) }
    
    // MARK: UIButton methods
    public static func title(_ value: String, _ state: UIControlState) -> Style {
        return { button in
            button.setTitle(value, for: state)
            return button
        }
    }
    
    public static func attributedTitle(_ value: NSAttributedString, _ state: UIControlState) -> Style {
        return { button in
            button.setAttributedTitle(value, for: state)
            return button
        }
    }
    
    public static func titleColor(_ value: UIColor, _ state: UIControlState) -> Style {
        return { button in
            button.setTitleColor(value, for: state)
            return button
        }
    }
    
    public static func titleShadowColor(_ value: UIColor, _ state: UIControlState) -> Style {
        return { button in
            button.setTitleShadowColor(value, for: state)
            return button
        }
    }
    
    public static func reversesTitleShadowWhenHighlighted(_ value: Bool) -> Style {
        return { button in
            button.reversesTitleShadowWhenHighlighted = value
            return button
        }
    }
    
    public static func adjustsImageWhenHighlighted(_ value: Bool) -> Style {
        return { button in
            button.adjustsImageWhenHighlighted = value
            return button
        }
    }
    
    public static func adjustsImageWhenDisabled(_ value: Bool) -> Style {
        return { button in
            button.adjustsImageWhenDisabled = value
            return button
        }
    }
    
    public static func showsTouchWhenHighlighted(_ value: Bool) -> Style {
        return { button in
            button.showsTouchWhenHighlighted = value
            return button
        }
    }
    
    public static func backgroundImage(_ value: UIImage, _ state: UIControlState) -> Style {
        return { button in
            button.setBackgroundImage(value, for: state)
            return button
        }
    }
    
    public static func image(_ value: UIImage, _ state: UIControlState) -> Style {
        return { button in
            button.setImage(value, for: state)
            return button
        }
    }
    
    public static func tintColor(_ value: UIColor) -> Style {
        return { button in
            button.tintColor = value
            return button
        }
    }
    
    public static func contentEdgeInsets(_ value: UIEdgeInsets) -> Style {
        return { button in
            button.contentEdgeInsets = value
            return button
        }
    }
    
    public static func titleEdgeInsets(_ value: UIEdgeInsets) -> Style {
        return { button in
            button.titleEdgeInsets = value
            return button
        }
    }
    
    public static func imageEdgeInsets(_ value: UIEdgeInsets) -> Style {
        return { button in
            button.imageEdgeInsets = value
            return button
        }
    }
    
    // MARK: UIControl
    public static func isEnabled(_ value: Bool) -> Style {
        return { label in
            label.isEnabled = value
            return label
        }
    }
    
    public static func isSelected(_ value: Bool) -> Style {
        return { label in
            label.isSelected = value
            return label
        }
    }
    
    public static func isHighlighted(_ value: Bool) -> Style {
        return { label in
            label.isHighlighted = value
            return label
        }
    }
    
    public static func contentVerticalAlignment(_ value: UIControlContentVerticalAlignment) -> Style {
        return { label in
            label.contentVerticalAlignment = value
            return label
        }
    }
    
    public static func contentHorizontalAlignment(_ value: UIControlContentHorizontalAlignment) -> Style {
        return { label in
            label.contentHorizontalAlignment = value
            return label
        }
    }
    
    // MARK: TitleLabel
    public static func titleFont(_ value: UIFont) -> Style {
        return { label in
            label.titleLabel?.font = value
            return label
        }
    }

    // MARK: UIView methods
    public static func backgroundColor(_ value: UIColor) -> Style {
        return { button in
            button.backgroundColor = value
            return button
        }
    }
    
    public static func alpha(_ value: CGFloat) -> Style {
        return { button in
            button.alpha = value
            return button
        }
    }
    
    public static func tintAdjustmentMode(_ value:  UIViewTintAdjustmentMode) -> Style {
        return { button in
            button.tintAdjustmentMode = value
            return button
        }
    }
    
    public static func isHidden(_ value: Bool) -> Style {
        return { button in
            button.isHidden = value
            return button
        }
    }
    
    public static func isOpaque(_ value: Bool) -> Style {
        return { button in
            button.isOpaque = value
            return button
        }
    }
    
    public static func clipsToBounds(_ value: Bool) -> Style {
        return { button in
            button.clipsToBounds = value
            return button
        }
    }
    
    public static func clearsContextBeforeDrawing(_ value: Bool) -> Style {
        return { button in
            button.clearsContextBeforeDrawing = value
            return button
        }
    }
    
    public static func isUserInteractionEnabled(_ value: Bool) -> Style {
        return { button in
            button.isUserInteractionEnabled = value
            return button
        }
    }
    
    public static func isMultipleTouchEnabled(_ value: Bool) -> Style {
        return { button in
            button.isMultipleTouchEnabled = value
            return button
        }
    }
    
    public static func isExclusiveTouch(_ value: Bool) -> Style {
        return { button in
            button.isExclusiveTouch = value
            return button
        }
    }
    
    // MARK: CALayer methods
    
    public static func masksToBounds(_ value: Bool) -> Style {
        return { button in
            button.layer.masksToBounds = value
            return button
        }
    }
    
    public static func cornerRadius(_ value: CGFloat) -> Style {
        return { button in
            button.layer.cornerRadius = value
            return button
        }
    }
    
    public static func maskedCorners(_ value: CACornerMask) -> Style {
        return { button in
            button.layer.maskedCorners = value
            return button
        }
    }
    
    public static func borderWidth(_ value: CGFloat) -> Style {
        return { button in
            button.layer.borderWidth = value
            return button
        }
    }
    
    public static func borderColor(_ value: UIColor) -> Style {
        return { button in
            button.layer.borderColor = value.cgColor
            return button
        }
    }
    
    public static func shadowOpacity(_ value: Float) -> Style {
        return { button in
            button.layer.shadowOpacity = value
            return button
        }
    }
    
    public static func shadowRadius(_ value: CGFloat) -> Style {
        return { button in
            button.layer.shadowRadius = value
            return button
        }
    }
    
    public static func layerShadowOffset(_ value: CGSize) -> Style {
        return { button in
            button.layer.shadowOffset = value
            return button
        }
    }
    
    public static func layerShadowColor(_ value: UIColor) -> Style {
        return { button in
            button.layer.shadowColor = value.cgColor
            return button
        }
    }
    
    public static func shadowPath(_ value: CGPath) -> Style {
        return { button in
            button.layer.shadowPath = value
            return button
        }
    }
}
