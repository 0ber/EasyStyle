import UIKit

extension UIButton {
    public func setStyle(_ style: ButtonStyle) {
        _ = style.style(self)
    }
}

public struct ButtonStyle: StyleProtocol, ViewStyleCompatability {
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
}
