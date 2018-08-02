import UIKit

extension UITableView {
    public func setStyle(_ style: TableViewStyle) {
        _ = style.style(self)
    }
}

public struct TableViewStyle: StyleProtocol {
    
    public typealias ViewType = UITableView
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: TableViewStyle { return TableViewStyle(style: { $0 }) }
    
    // MARK: TableView
    public static func rowHeight(_ value: CGFloat) -> Style {
        return { tableView in
            tableView.rowHeight = value
            return tableView
        }
    }
    
    public static func separatorStyle(_ value: UITableViewCellSeparatorStyle) -> Style {
        return { tableView in
            tableView.separatorStyle = value
            return tableView
        }
    }
    
    public static func separatorColor(_ value: UIColor) -> Style {
        return { tableView in
            tableView.separatorColor = value
            return tableView
        }
    }
    
    public static func separatorEffect(_ value: UIVisualEffect) -> Style {
        return { tableView in
            tableView.separatorEffect = value
            return tableView
        }
    }
    
    public static func backgroundView(_ value: UIView) -> Style {
        return { tableView in
            tableView.backgroundView = value
            return tableView
        }
    }
    
    public static func separatorInset(_ value: UIEdgeInsets) -> Style {
        return { tableView in
            tableView.separatorInset = value
            return tableView
        }
    }
    
    public static func separatorInsetReference(_ value: UITableViewSeparatorInsetReference) -> Style {
        return { tableView in
            tableView.separatorInsetReference = value
            return tableView
        }
    }
    
    public static func tableHeaderView(_ value: UIView) -> Style {
        return { tableView in
            tableView.tableHeaderView = value
            return tableView
        }
    }
    
    public static func tableFooterView(_ value: UIView) -> Style {
        return { tableView in
            tableView.tableFooterView = value
            return tableView
        }
    }
    
    public static func sectionHeaderHeight(_ value: CGFloat) -> Style {
        return { tableView in
            tableView.sectionHeaderHeight = value
            return tableView
        }
    }
    
    public static func sectionFooterHeight(_ value: CGFloat) -> Style {
        return { tableView in
            tableView.sectionFooterHeight = value
            return tableView
        }
    }
    
    public static func estimatedRowHeight(_ value: CGFloat) -> Style {
        return { tableView in
            tableView.estimatedRowHeight = value
            return tableView
        }
    }
    
    public static func estimatedSectionHeaderHeight(_ value: CGFloat) -> Style {
        return { tableView in
            tableView.estimatedSectionHeaderHeight = value
            return tableView
        }
    }
    
    public static func estimatedSectionFooterHeight(_ value: CGFloat) -> Style {
        return { tableView in
            tableView.estimatedSectionFooterHeight = value
            return tableView
        }
    }
    
    public static func allowsSelection(_ value: Bool) -> Style {
        return { tableView in
            tableView.allowsSelection = value
            return tableView
        }
    }
    
    public static func allowsMultipleSelection(_ value: Bool) -> Style {
        return { tableView in
            tableView.allowsMultipleSelection = value
            return tableView
        }
    }
    
    public static func allowsSelectionDuringEditing(_ value: Bool) -> Style {
        return { tableView in
            tableView.allowsSelectionDuringEditing = value
            return tableView
        }
    }
    
    public static func allowsMultipleSelectionDuringEditing(_ value: Bool) -> Style {
        return { tableView in
            tableView.allowsMultipleSelectionDuringEditing = value
            return tableView
        }
    }
    
    public static func sectionIndexMinimumDisplayRowCount(_ value: Int) -> Style {
        return { tableView in
            tableView.sectionIndexMinimumDisplayRowCount = value
            return tableView
        }
    }
    
    public static func insetsContentViewsToSafeArea(_ value: Bool) -> Style {
        return { tableView in
            tableView.insetsContentViewsToSafeArea = value
            return tableView
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
