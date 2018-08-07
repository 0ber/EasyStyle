import UIKit

extension UICollectionView {
    public func setStyle(_ style: CollectionViewStyle) {
        _ = style.style(self)
    }
}

public struct CollectionViewStyle: StyleProtocol, ViewStyleCompatability, ScrollViewStyleCompatability {
    
    public typealias ViewType = UICollectionView
    
    public let style: Style
    
    public init(style: @escaping Style) {
        self.style = style
    }
    
    public static var create: CollectionViewStyle { return CollectionViewStyle(style: { $0 }) }
    
    // MARK: UICollectionView
    
    public static func backgroundView(_ value: UIView) -> CollectionViewStyle {
        return CollectionViewStyle(style:  { collectionView in
            collectionView.backgroundView = value
            return collectionView
        })
    }
    
    public static func isPrefetchingEnabled(_ value: Bool) -> CollectionViewStyle {
        return CollectionViewStyle(style:  { collectionView in
            collectionView.isPrefetchingEnabled = value
            return collectionView
        })
    }
    
    @available(iOS 11.0, *)
    public static func dragInteractionEnabled(_ value: Bool) -> CollectionViewStyle {
        return CollectionViewStyle(style:  { collectionView in
            collectionView.dragInteractionEnabled = value
            return collectionView
        })
    }
    
    public static func allowsSelection(_ value: Bool) -> CollectionViewStyle {
        return CollectionViewStyle(style:  { collectionView in
            collectionView.allowsSelection = value
            return collectionView
        })
    }
    
    public static func allowsMultipleSelection(_ value: Bool) -> CollectionViewStyle {
        return CollectionViewStyle(style:  { collectionView in
            collectionView.allowsMultipleSelection = value
            return collectionView
        })
    }
}
