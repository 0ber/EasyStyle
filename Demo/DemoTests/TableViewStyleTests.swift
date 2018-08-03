import XCTest
@testable import Demo

class TableViewStyleTests: XCTestCase {
    
    var tableView: UITableView!

    override func setUp() {
        super.setUp()
        tableView = UITableView()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreateViewStyle() {
        
        let style = TableViewStyle.backgroundColor(.red)
        let tableStyle = TableViewStyle(style: style)
        
        XCTAssertNotNil(tableStyle.style)
    }
    
    func testRowHeight() {
        let rowHeight: CGFloat = 103
        
        let style = TableViewStyle.rowHeight(rowHeight)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.rowHeight, rowHeight)
    }
    
    func testSeparatorStyle() {
        let separatorStyle = UITableViewCellSeparatorStyle.singleLine
        
        let style = TableViewStyle.separatorStyle(separatorStyle)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.separatorStyle, separatorStyle)
    }
    
    func testSeparatorColor() {
        let separatorColor = UIColor.red
        
        let style = TableViewStyle.separatorColor(separatorColor)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.separatorColor, separatorColor)
    }
    
    func testSeparatorEffect() {
        let separatorEffect = UIVisualEffect()
        
        let style = TableViewStyle.separatorEffect(separatorEffect)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.separatorEffect, separatorEffect)
    }
    
    func testBackgroundView() {
        let backgroundView = UIView()
        backgroundView.tag = 11
        
        let style = TableViewStyle.backgroundView(backgroundView)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.backgroundView, backgroundView)
    }
    
    func testSeparatorInset() {
        let separatorInset = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = TableViewStyle.separatorInset(separatorInset)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.separatorInset, separatorInset)
    }
    
    func testSeparatorInsetReference() {
        let separatorInsetReference = UITableViewSeparatorInsetReference.fromAutomaticInsets
        
        let style = TableViewStyle.separatorInsetReference(separatorInsetReference)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.separatorInsetReference, separatorInsetReference)
    }
    
    func testTableHeaderView() {
        let tableHeaderView = UIView()
        tableHeaderView.tag = 11
        
        let style = TableViewStyle.tableHeaderView(tableHeaderView)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.tableHeaderView, tableHeaderView)
    }
    
    func testTableFooterView() {
        let tableFooterView = UIView()
        tableFooterView.tag = 11
        
        let style = TableViewStyle.tableFooterView(tableFooterView)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.tableFooterView, tableFooterView)
    }
    
    func testSectionHeaderHeight() {
        let sectionHeaderHeight: CGFloat = 203

        let style = TableViewStyle.sectionHeaderHeight(sectionHeaderHeight)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.sectionHeaderHeight, sectionHeaderHeight)
    }
    
    func testSectionFooterHeight() {
        let sectionFooterHeight: CGFloat = 203
        
        let style = TableViewStyle.sectionFooterHeight(sectionFooterHeight)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.sectionFooterHeight, sectionFooterHeight)
    }
    
    func testEstimatedRowHeight() {
        let estimatedRowHeight: CGFloat = 203
        
        let style = TableViewStyle.estimatedRowHeight(estimatedRowHeight)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.estimatedRowHeight, estimatedRowHeight)
    }
    
    func testEstimatedSectionHeaderHeight() {
        let estimatedSectionHeaderHeight: CGFloat = 203
        
        let style = TableViewStyle.estimatedSectionHeaderHeight(estimatedSectionHeaderHeight)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.estimatedSectionHeaderHeight, estimatedSectionHeaderHeight)
    }
    
    func testestimatedSectionFooterHeight() {
        let estimatedSectionFooterHeight: CGFloat = 203
        
        let style = TableViewStyle.estimatedSectionFooterHeight(estimatedSectionFooterHeight)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.estimatedSectionFooterHeight, estimatedSectionFooterHeight)
    }
    
    func testAllowsSelection() {
        let allowsSelection = false
        
        let style = TableViewStyle.allowsSelection(allowsSelection)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.allowsSelection, allowsSelection)
    }
    
    func testAllowsMultipleSelection() {
        let allowsMultipleSelection = true
        
        let style = TableViewStyle.allowsMultipleSelection(allowsMultipleSelection)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.allowsMultipleSelection, allowsMultipleSelection)
    }
    
    func testAllowsSelectionDuringEditing() {
        let allowsSelectionDuringEditing = true
        
        let style = TableViewStyle.allowsSelectionDuringEditing(allowsSelectionDuringEditing)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.allowsSelectionDuringEditing, allowsSelectionDuringEditing)
    }
    
    func testAllowsMultipleSelectionDuringEditing() {
        let allowsMultipleSelectionDuringEditing = true
        
        let style = TableViewStyle.allowsMultipleSelectionDuringEditing(allowsMultipleSelectionDuringEditing)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.allowsMultipleSelectionDuringEditing, allowsMultipleSelectionDuringEditing)
    }
    
    func testSectionIndexMinimumDisplayRowCoun() {
        let sectionIndexMinimumDisplayRowCount = 3
        
        let style = TableViewStyle.sectionIndexMinimumDisplayRowCount(sectionIndexMinimumDisplayRowCount)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.sectionIndexMinimumDisplayRowCount, sectionIndexMinimumDisplayRowCount)
    }
    
    func testInsetsContentViewsToSafeArea() {
        let insetsContentViewsToSafeArea = false
        
        let style = TableViewStyle.insetsContentViewsToSafeArea(insetsContentViewsToSafeArea)
        let viewStyle = TableViewStyle(style: style)
        
        tableView.setStyle(viewStyle)
        
        XCTAssertEqual(tableView.insetsContentViewsToSafeArea, insetsContentViewsToSafeArea)
    }
}
