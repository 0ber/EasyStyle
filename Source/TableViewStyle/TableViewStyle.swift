import UIKit

extension UITableView {
    public func setStyle(_ style: TableViewStyle) {
        _ = style.style(self)
    }
}

public struct TableViewStyle: StyleProtocol, ViewStyleCompatability, ScrollViewStyleCompatability {
    
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
}
