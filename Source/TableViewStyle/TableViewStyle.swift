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
    
    // MARK: TableView
    public static func rowHeight(_ value: CGFloat) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.rowHeight = value
            return tableView
        })
    }
    
    public static func separatorStyle(_ value: UITableViewCell.SeparatorStyle) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.separatorStyle = value
            return tableView
        })
    }
    
    public static func separatorColor(_ value: UIColor) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.separatorColor = value
            return tableView
        })
    }
    
    public static func separatorEffect(_ value: UIVisualEffect) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.separatorEffect = value
            return tableView
        })
    }
    
    public static func backgroundView(_ value: UIView) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.backgroundView = value
            return tableView
        })
    }
    
    public static func separatorInset(_ value: UIEdgeInsets) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.separatorInset = value
            return tableView
        })
    }
    
    @available(iOS 11.0, *)
    public static func separatorInsetReference(_ value: UITableView.SeparatorInsetReference) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.separatorInsetReference = value
            return tableView
        })
    }
    
    public static func tableHeaderView(_ value: UIView) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.tableHeaderView = value
            return tableView
        })
    }
    
    public static func tableFooterView(_ value: UIView) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.tableFooterView = value
            return tableView
        })
    }
    
    public static func sectionHeaderHeight(_ value: CGFloat) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.sectionHeaderHeight = value
            return tableView
        })
    }
    
    public static func sectionFooterHeight(_ value: CGFloat) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.sectionFooterHeight = value
            return tableView
        })
    }
    
    public static func estimatedRowHeight(_ value: CGFloat) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.estimatedRowHeight = value
            return tableView
        })
    }
    
    public static func estimatedSectionHeaderHeight(_ value: CGFloat) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.estimatedSectionHeaderHeight = value
            return tableView
        })
    }
    
    public static func estimatedSectionFooterHeight(_ value: CGFloat) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.estimatedSectionFooterHeight = value
            return tableView
        })
    }
    
    public static func allowsSelection(_ value: Bool) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.allowsSelection = value
            return tableView
        })
    }
    
    public static func allowsMultipleSelection(_ value: Bool) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.allowsMultipleSelection = value
            return tableView
        })
    }
    
    public static func allowsSelectionDuringEditing(_ value: Bool) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.allowsSelectionDuringEditing = value
            return tableView
        })
    }
    
    public static func allowsMultipleSelectionDuringEditing(_ value: Bool) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.allowsMultipleSelectionDuringEditing = value
            return tableView
        })
    }
    
    public static func sectionIndexMinimumDisplayRowCount(_ value: Int) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.sectionIndexMinimumDisplayRowCount = value
            return tableView
        })
    }
    
    @available(iOS 11.0, *)
    public static func insetsContentViewsToSafeArea(_ value: Bool) -> TableViewStyle {
        return  TableViewStyle(style: { tableView in
            tableView.insetsContentViewsToSafeArea = value
            return tableView
        })
    }
}
