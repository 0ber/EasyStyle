import UIKit

extension UIImageView {
    public func setStyle(_ style: ImageViewStyle) {
        _ = style.style(self)
    }
}

public struct ImageViewStyle: StyleProtocol {
    
    public typealias ViewType = UIImageView
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: ImageViewStyle { return ImageViewStyle(style: { $0 }) }
    
    // MARK: ImageView
    
    public static func image(_ value: UIImage) -> Style {
        return { imageView in
            imageView.image = value
            return imageView
        }
    }
    
    public static func highlightedImage(_ value: UIImage) -> Style {
        return { imageView in
            imageView.highlightedImage = value
            return imageView
        }
    }
    
    public static func animationImages(_ value: [UIImage]) -> Style {
        return { imageView in
            imageView.animationImages = value
            return imageView
        }
    }
    
    public static func highlightedAnimationImages(_ value: [UIImage]) -> Style {
        return { imageView in
            imageView.highlightedAnimationImages = value
            return imageView
        }
    }
    
    public static func animationDuration(_ value: TimeInterval) -> Style {
        return { imageView in
            imageView.animationDuration = value
            return imageView
        }
    }
    
    public static func animationRepeatCount(_ value: Int) -> Style {
        return { imageView in
            imageView.animationRepeatCount = value
            return imageView
        }
    }
    
    public static func isUserInteractionEnabled(_ value: Bool) -> Style {
        return { imageView in
            imageView.isUserInteractionEnabled = value
            return imageView
        }
    }
    
    public static func isHighlighted(_ value: Bool) -> Style {
        return { imageView in
            imageView.isHighlighted = value
            return imageView
        }
    }
    
    public static func tintColor(_ value: UIColor) -> Style {
        return { imageView in
            imageView.tintColor = value
            return imageView
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
