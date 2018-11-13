import UIKit

extension UIButton {
    public func setStyle(_ style: ButtonStyle) {
        _ = style.style(self)
    }
}

public struct ButtonStyle: StyleProtocol, ControlStyleCompatability, ViewStyleCompatability {
    public typealias ViewType = UIButton
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    // MARK: UIButton methods
    public static func title(_ value: String, _ state: UIControl.State) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.setTitle(value, for: state)
            return button
        })
    }
    
    public static func attributedTitle(_ value: NSAttributedString, _ state: UIControl.State) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.setAttributedTitle(value, for: state)
            return button
        })
    }
    
    public static func titleColor(_ value: UIColor, _ state: UIControl.State) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.setTitleColor(value, for: state)
            return button
        })
    }
    
    public static func titleShadowColor(_ value: UIColor, _ state: UIControl.State) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.setTitleShadowColor(value, for: state)
            return button
        })
    }
    
    public static func reversesTitleShadowWhenHighlighted(_ value: Bool) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.reversesTitleShadowWhenHighlighted = value
            return button
        })
    }
    
    public static func adjustsImageWhenHighlighted(_ value: Bool) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.adjustsImageWhenHighlighted = value
            return button
        })
    }
    
    public static func adjustsImageWhenDisabled(_ value: Bool) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.adjustsImageWhenDisabled = value
            return button
        })
    }
    
    public static func showsTouchWhenHighlighted(_ value: Bool) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.showsTouchWhenHighlighted = value
            return button
        })
    }
    
    public static func backgroundImage(_ value: UIImage?, _ state: UIControl.State) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.setBackgroundImage(value, for: state)
            return button
        })
    }
    
    public static func image(_ value: UIImage?, _ state: UIControl.State) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.setImage(value, for: state)
            return button
        })
    }
    
    public static func tintColor(_ value: UIColor) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.tintColor = value
            return button
        })
    }
    
    public static func contentEdgeInsets(_ value: UIEdgeInsets) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.contentEdgeInsets = value
            return button
        })
    }
    
    public static func titleEdgeInsets(_ value: UIEdgeInsets) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.titleEdgeInsets = value
            return button
        })
    }
    
    public static func imageEdgeInsets(_ value: UIEdgeInsets) -> ButtonStyle {
        return ButtonStyle(style: { button in
            button.imageEdgeInsets = value
            return button
        })
    }
    
    // MARK: TitleLabel
    public static func titleFont(_ value: UIFont) -> ButtonStyle {
        return ButtonStyle(style: { label in
            label.titleLabel?.font = value
            return label
        })
    }
}
