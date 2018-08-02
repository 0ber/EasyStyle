import UIKit

extension UIImageView {
    public func setStyle(_ style: ImageViewStyle) {
        _ = style.style(self)
    }
}

public struct ImageViewStyle: StyleProtocol, ViewStyleCompatability {
    
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
}
