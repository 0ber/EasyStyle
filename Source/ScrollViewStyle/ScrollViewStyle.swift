import UIKit

extension UIScrollView {
    public func setStyle(_ style: ScrollViewStyle) {
        _ = style.style(self)
    }
}

public protocol ScrollViewStyleCompatability  { }


public struct ScrollViewStyle: StyleProtocol, ViewStyleCompatability, ScrollViewStyleCompatability {
    
    public typealias ViewType = UIScrollView
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: ScrollViewStyle { return ScrollViewStyle(style: { $0 }) }
}

extension ScrollViewStyleCompatability where Self: StyleProtocol, Self.ViewType: UIScrollView {

    // MARK: UIScrollView
    
    public static func contentSize(_ value: CGSize) -> Style {
        return { scrollView in
            scrollView.contentSize = value
            return scrollView
        }
    }
    
    public static func contentOffset(_ value: CGPoint, animated: Bool = false) -> Style {
        return { scrollView in
            scrollView.setContentOffset(value, animated: animated)
            return scrollView
        }
    }
    
    public static func contentInset(_ value: UIEdgeInsets) -> Style {
        return { scrollView in
            scrollView.contentInset = value
            return scrollView
        }
    }
    
    @available(iOS 11.0, *)
    public static func contentInsetAdjustmentBehavior(_ value: UIScrollViewContentInsetAdjustmentBehavior) -> Style {
        return { scrollView in
            scrollView.contentInsetAdjustmentBehavior = value
            return scrollView
        }
    }
    
    public static func isScrollEnabled(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.isScrollEnabled = value
            return scrollView
        }
    }
    
    public static func isDirectionalLockEnabled(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.isDirectionalLockEnabled = value
            return scrollView
        }
    }
    
    public static func isPagingEnabled(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.isPagingEnabled = value
            return scrollView
        }
    }
    
    public static func scrollsToTop(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.scrollsToTop = value
            return scrollView
        }
    }
    
    public static func bounces(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.bounces = value
            return scrollView
        }
    }
    
    public static func alwaysBounceVertical(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.alwaysBounceVertical = value
            return scrollView
        }
    }
    
    public static func alwaysBounceHorizontal(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.alwaysBounceHorizontal = value
            return scrollView
        }
    }
    
    public static func decelerationRate(_ value: CGFloat) -> Style {
        return { scrollView in
            scrollView.decelerationRate = value
            return scrollView
        }
    }
    
    public static func indicatorStyle(_ value: UIScrollViewIndicatorStyle) -> Style {
        return { scrollView in
            scrollView.indicatorStyle = value
            return scrollView
        }
    }
    
    public static func scrollIndicatorInsets(_ value: UIEdgeInsets) -> Style {
        return { scrollView in
            scrollView.scrollIndicatorInsets = value
            return scrollView
        }
    }
    
    public static func showsHorizontalScrollIndicator(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.showsHorizontalScrollIndicator = value
            return scrollView
        }
    }
    
    public static func showsVerticalScrollIndicator(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.showsVerticalScrollIndicator = value
            return scrollView
        }
    }
    
    public static func refreshControl(_ value: UIRefreshControl) -> Style {
        return { scrollView in
            scrollView.refreshControl = value
            return scrollView
        }
    }
    
    public static func canCancelContentTouches(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.canCancelContentTouches = value
            return scrollView
        }
    }
    
    public static func delaysContentTouches(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.delaysContentTouches = value
            return scrollView
        }
    }
    
    public static func zoom(to value: CGRect, _ animated: Bool = false) -> Style {
        return { scrollView in
            scrollView.zoom(to: value, animated: animated)
            return scrollView
        }
    }
    
    public static func zomeScale(_ value: CGFloat, animated: Bool = false) -> Style {
        return { scrollView in
            scrollView.setZoomScale(value, animated: animated)
            return scrollView
        }
    }
    
    public static func maximumZoomScale(_ value: CGFloat) -> Style {
        return { scrollView in
            scrollView.maximumZoomScale = value
            return scrollView
        }
    }
    
    public static func minimumZoomScale(_ value: CGFloat) -> Style {
        return { scrollView in
            scrollView.minimumZoomScale = value
            return scrollView
        }
    }
    
    public static func bouncesZoom(_ value: Bool) -> Style {
        return { scrollView in
            scrollView.bouncesZoom = value
            return scrollView
        }
    }
    
    public static func keyboardDismissMode(_ value: UIScrollViewKeyboardDismissMode) -> Style {
        return { scrollView in
            scrollView.keyboardDismissMode = value
            return scrollView
        }
    }
    
    public static func indexDisplayMode(_ value: UIScrollViewIndexDisplayMode) -> Style {
        return { scrollView in
            scrollView.indexDisplayMode = value
            return scrollView
        }
    }
}
