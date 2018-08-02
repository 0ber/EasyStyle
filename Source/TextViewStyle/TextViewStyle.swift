import UIKit

extension UITextView {
    public func setStyle(_ style: TextViewStyle) {
        _ = style.style(self)
    }
}

public struct TextViewStyle: StyleProtocol {
    
    public typealias ViewType = UITextView
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: TextViewStyle { return TextViewStyle(style: { $0 }) }
    
    // MARK: UITextView
    
    public static func text(_ value: String) -> Style {
        return { textView in
            textView.text = value
            return textView
        }
    }
    
    public static func attributedText(_ value: NSAttributedString) -> Style {
        return { textView in
            textView.attributedText = value
            return textView
        }
    }
    
    public static func font(_ value: UIFont) -> Style {
        return { textView in
            textView.font = value
            return textView
        }
    }
    
    public static func textColor(_ value: UIColor) -> Style {
        return { textView in
            textView.textColor = value
            return textView
        }
    }
    
    public static func isEditable(_ value: Bool) -> Style {
        return { textView in
            textView.isEditable = value
            return textView
        }
    }
    
    public static func allowsEditingTextAttributes(_ value: Bool) -> Style {
        return { textView in
            textView.allowsEditingTextAttributes = value
            return textView
        }
    }
    
    public static func dataDetectorTypes(_ value: UIDataDetectorTypes) -> Style {
        return { textView in
            textView.dataDetectorTypes = value
            return textView
        }
    }
    
    public static func textAlignment(_ value: NSTextAlignment) -> Style {
        return { textView in
            textView.textAlignment = value
            return textView
        }
    }
    
    public static func typingAttributes(_ value: [String: Any]) -> Style {
        return { textView in
            textView.typingAttributes = value
            return textView
        }
    }
    
    public static func linkTextAttributes(_ value: [String: Any]) -> Style {
        return { textView in
            textView.linkTextAttributes = value
            return textView
        }
    }
    
    public static func textContainerInset(_ value: UIEdgeInsets) -> Style {
        return { textView in
            textView.textContainerInset = value
            return textView
        }
    }
    
    public static func selectedRange(_ value: NSRange) -> Style {
        return { textView in
            textView.selectedRange = value
            return textView
        }
    }
    
    public static func clearsOnInsertion(_ value: Bool) -> Style {
        return { textView in
            textView.clearsOnInsertion = value
            return textView
        }
    }
    
    public static func isSelectable(_ value: Bool) -> Style {
        return { textView in
            textView.isSelectable = value
            return textView
        }
    }
    
    public static func inputView(_ value: UIView) -> Style {
        return { textView in
            textView.inputView = value
            return textView
        }
    }
    
    public static func inputAccessoryView(_ value: UIView) -> Style {
        return { textView in
            textView.inputAccessoryView = value
            return textView
        }
    }
    
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
