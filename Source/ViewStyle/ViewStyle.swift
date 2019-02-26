import UIKit

extension UIView {
    public func setStyle(_ style: ViewStyle) {
        _ = style.style(self)
    }
}

public protocol ViewStyleCompatability  {
    static func backgroundColor(_ value: UIColor) -> Self
    static func alpha(_ value: CGFloat) -> Self
    static func tintColor(_ value: UIColor) -> Self
    static func tintAdjustmentMode(_ value:  UIView.TintAdjustmentMode) -> Self
    static func isHidden(_ value: Bool) -> Self
    static func isOpaque(_ value: Bool) -> Self
    static func clipsToBounds(_ value: Bool) -> Self
    static func clearsContextBeforeDrawing(_ value: Bool) -> Self
    static func isUserInteractionEnabled(_ value: Bool) -> Self
    static func isMultipleTouchEnabled(_ value: Bool) -> Self
    static func isExclusiveTouch(_ value: Bool) -> Self

    static func masksToBounds(_ value: Bool) -> Self
    static func cornerRadius(_ value: CGFloat) -> Self

    static func borderWidth(_ value: CGFloat) -> Self
    static func borderColor(_ value: UIColor) -> Self
    static func shadowOpacity(_ value: Float) -> Self
    static func shadowRadius(_ value: CGFloat) -> Self
    static func layerShadowOffset(_ value: CGSize) -> Self
    static func layerShadowColor(_ value: UIColor) -> Self
    static func shadowPath(_ value: CGPath) -> Self
    
    @available(iOS 11.0, *)
    static func maskedCorners(_ value: CACornerMask) -> Self
}

public struct ViewStyle: StyleProtocol, ViewStyleCompatability {
    
    public typealias ViewType = UIView
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
}

extension ViewStyleCompatability where Self: StyleProtocol, Self.ViewType: UIView {
    
    // MARK: UIView methods
    public static func backgroundColor(_ value: UIColor) -> Self {
        return Self.init(style: { view in
            view.backgroundColor = value
            return view
        })
    }
    
    public static func alpha(_ value: CGFloat) -> Self {
        return Self.init(style: { view in
            view.alpha = value
            return view
        })
    }
    
    public static func tintColor(_ value: UIColor) -> Self {
        return Self.init(style: { view in
            view.tintColor = value
            return view
        })
    }
    
    public static func tintAdjustmentMode(_ value:  UIView.TintAdjustmentMode) -> Self {
        return Self.init(style: { view in
            view.tintAdjustmentMode = value
            return view
        })
    }
    
    public static func isHidden(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.isHidden = value
            return view
        })
    }
    
    public static func isOpaque(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.isOpaque = value
            return view
        })
    }
    
    public static func clipsToBounds(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.clipsToBounds = value
            return view
        })
    }
    
    public static func clearsContextBeforeDrawing(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.clearsContextBeforeDrawing = value
            return view
        })
    }
    
    public static func isUserInteractionEnabled(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.isUserInteractionEnabled = value
            return view
        })
    }
    
    public static func isMultipleTouchEnabled(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.isMultipleTouchEnabled = value
            return view
        })
    }
    
    public static func isExclusiveTouch(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.isExclusiveTouch = value
            return view
        })
    }
    
    // MARK: CALayer methods
    public static func masksToBounds(_ value: Bool) -> Self {
        return Self.init(style: { view in
            view.layer.masksToBounds = value
            return view
        })
    }
    
    public static func cornerRadius(_ value: CGFloat) -> Self {
        return Self.init(style: { view in
            view.layer.cornerRadius = value
            return view
        })
    }
    
    @available(iOS 11.0, *)
    public static func maskedCorners(_ value: CACornerMask) -> Self {
        return Self.init(style: { view in
            view.layer.maskedCorners = value
            return view
        })
    }
    
    public static func borderWidth(_ value: CGFloat) -> Self {
        return Self.init(style: { view in
            view.layer.borderWidth = value
            return view
        })
    }
    
    public static func borderColor(_ value: UIColor) -> Self {
        return Self.init(style: { view in
            view.layer.borderColor = value.cgColor
            return view
        })
    }
    
    public static func shadowOpacity(_ value: Float) -> Self {
        return Self.init(style: { view in
            view.layer.shadowOpacity = value
            return view
        })
    }
    
    public static func shadowRadius(_ value: CGFloat) -> Self {
        return Self.init(style: { view in
            view.layer.shadowRadius = value
            return view
        })
    }
    
    public static func layerShadowOffset(_ value: CGSize) -> Self {
        return Self.init(style: { view in
            view.layer.shadowOffset = value
            return view
        })
    }
    
    public static func layerShadowColor(_ value: UIColor) -> Self {
        return Self.init(style: { view in
            view.layer.shadowColor = value.cgColor
            return view
        })
    }
    
    public static func shadowPath(_ value: CGPath) -> Self {
        return Self.init(style: { view in
            view.layer.shadowPath = value
            return view
        })
    }
}
