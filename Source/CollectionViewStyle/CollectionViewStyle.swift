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
    
    public static func backgroundView(_ value: UIView) -> Style {
        return { collectionView in
            collectionView.backgroundView = value
            return collectionView
        }
    }
    
    public static func isPrefetchingEnabled(_ value: Bool) -> Style {
        return { collectionView in
            collectionView.isPrefetchingEnabled = value
            return collectionView
        }
    }
    
    public static func dragInteractionEnabled(_ value: Bool) -> Style {
        return { collectionView in
            collectionView.dragInteractionEnabled = value
            return collectionView
        }
    }
    
    public static func allowsSelection(_ value: Bool) -> Style {
        return { collectionView in
            collectionView.allowsSelection = value
            return collectionView
        }
    }
    
    public static func allowsMultipleSelection(_ value: Bool) -> Style {
        return { collectionView in
            collectionView.allowsMultipleSelection = value
            return collectionView
        }
    }
}
