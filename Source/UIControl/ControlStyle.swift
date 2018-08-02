import UIKit

extension UIControl {
    public func setStyle(_ style: ControlStyle) {
        _ = style.style(self)
    }
}

public struct ControlStyle: StyleProtocol, ViewStyleCompatability {
    
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
}
