import UIKit

extension UIControl {
    public func setStyle(_ style: ControlStyle) {
        _ = style.style(self)
    }
}

public protocol ControlStyleCompatability  {
    static func isEnabled(_ value: Bool) -> Self
    static func isSelected(_ value: Bool) -> Self
    static func isHighlighted(_ value: Bool) -> Self
    static func contentVerticalAlignment(_ value: UIControl.ContentVerticalAlignment) -> Self
    static func contentHorizontalAlignment(_ value: UIControl.ContentHorizontalAlignment) -> Self
}

public struct ControlStyle: StyleProtocol, ControlStyleCompatability, ViewStyleCompatability {
    
    public typealias ViewType = UIControl
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
}
    
extension ControlStyleCompatability where Self: StyleProtocol, Self.ViewType: UIControl {
    
    // MARK: UIControl
    public static func isEnabled(_ value: Bool) -> Self {
        return Self.init(style: { contol in
            contol.isEnabled = value
            return contol
        })
    }
    
    public static func isSelected(_ value: Bool) -> Self {
        return Self.init(style: { contol in
            contol.isSelected = value
            return contol
        })
    }
    
    public static func isHighlighted(_ value: Bool) -> Self {
        return Self.init(style: { contol in
            contol.isHighlighted = value
            return contol
        })
    }
    
    public static func contentVerticalAlignment(_ value: UIControl.ContentVerticalAlignment) -> Self {
        return Self.init(style: { contol in
            contol.contentVerticalAlignment = value
            return contol
        })
    }
    
    public static func contentHorizontalAlignment(_ value: UIControl.ContentHorizontalAlignment) -> Self {
        return Self.init(style: { contol in
            contol.contentHorizontalAlignment = value
            return contol
        })
    }
}
