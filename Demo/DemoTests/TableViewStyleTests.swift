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

        XCTAssertNotNil(style.style)
    }
    
    func testRowHeight() {
        let rowHeight: CGFloat = 103
        
        let style = TableViewStyle.rowHeight(rowHeight)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.rowHeight, rowHeight)
    }
    
    func testSeparatorStyle() {
        let separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        
        let style = TableViewStyle.separatorStyle(separatorStyle)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.separatorStyle, separatorStyle)
    }
    
    func testSeparatorColor() {
        let separatorColor = UIColor.red
        
        let style = TableViewStyle.separatorColor(separatorColor)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.separatorColor, separatorColor)
    }
    
    func testSeparatorEffect() {
        let separatorEffect = UIVisualEffect()
        
        let style = TableViewStyle.separatorEffect(separatorEffect)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.separatorEffect, separatorEffect)
    }
    
    func testBackgroundView() {
        let backgroundView = UIView()
        backgroundView.tag = 11
        
        let style = TableViewStyle.backgroundView(backgroundView)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.backgroundView, backgroundView)
    }
    
    func testSeparatorInset() {
        let separatorInset = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = TableViewStyle.separatorInset(separatorInset)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.separatorInset, separatorInset)
    }
    
    func testSeparatorInsetReference() {
        let separatorInsetReference = UITableView.SeparatorInsetReference.fromAutomaticInsets
        
        let style = TableViewStyle.separatorInsetReference(separatorInsetReference)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.separatorInsetReference, separatorInsetReference)
    }
    
    func testTableHeaderView() {
        let tableHeaderView = UIView()
        tableHeaderView.tag = 11
        
        let style = TableViewStyle.tableHeaderView(tableHeaderView)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.tableHeaderView, tableHeaderView)
    }
    
    func testTableFooterView() {
        let tableFooterView = UIView()
        tableFooterView.tag = 11
        
        let style = TableViewStyle.tableFooterView(tableFooterView)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.tableFooterView, tableFooterView)
    }
    
    func testSectionHeaderHeight() {
        let sectionHeaderHeight: CGFloat = 203

        let style = TableViewStyle.sectionHeaderHeight(sectionHeaderHeight)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.sectionHeaderHeight, sectionHeaderHeight)
    }
    
    func testSectionFooterHeight() {
        let sectionFooterHeight: CGFloat = 203
        
        let style = TableViewStyle.sectionFooterHeight(sectionFooterHeight)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.sectionFooterHeight, sectionFooterHeight)
    }
    
    func testEstimatedRowHeight() {
        let estimatedRowHeight: CGFloat = 203
        
        let style = TableViewStyle.estimatedRowHeight(estimatedRowHeight)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.estimatedRowHeight, estimatedRowHeight)
    }
    
    func testEstimatedSectionHeaderHeight() {
        let estimatedSectionHeaderHeight: CGFloat = 203
        
        let style = TableViewStyle.estimatedSectionHeaderHeight(estimatedSectionHeaderHeight)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.estimatedSectionHeaderHeight, estimatedSectionHeaderHeight)
    }
    
    func testestimatedSectionFooterHeight() {
        let estimatedSectionFooterHeight: CGFloat = 203
        
        let style = TableViewStyle.estimatedSectionFooterHeight(estimatedSectionFooterHeight)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.estimatedSectionFooterHeight, estimatedSectionFooterHeight)
    }
    
    func testAllowsSelection() {
        let allowsSelection = false
        
        let style = TableViewStyle.allowsSelection(allowsSelection)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.allowsSelection, allowsSelection)
    }
    
    func testAllowsMultipleSelection() {
        let allowsMultipleSelection = true
        
        let style = TableViewStyle.allowsMultipleSelection(allowsMultipleSelection)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.allowsMultipleSelection, allowsMultipleSelection)
    }
    
    func testAllowsSelectionDuringEditing() {
        let allowsSelectionDuringEditing = true
        
        let style = TableViewStyle.allowsSelectionDuringEditing(allowsSelectionDuringEditing)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.allowsSelectionDuringEditing, allowsSelectionDuringEditing)
    }
    
    func testAllowsMultipleSelectionDuringEditing() {
        let allowsMultipleSelectionDuringEditing = true
        
        let style = TableViewStyle.allowsMultipleSelectionDuringEditing(allowsMultipleSelectionDuringEditing)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.allowsMultipleSelectionDuringEditing, allowsMultipleSelectionDuringEditing)
    }
    
    func testSectionIndexMinimumDisplayRowCoun() {
        let sectionIndexMinimumDisplayRowCount = 3
        
        let style = TableViewStyle.sectionIndexMinimumDisplayRowCount(sectionIndexMinimumDisplayRowCount)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.sectionIndexMinimumDisplayRowCount, sectionIndexMinimumDisplayRowCount)
    }
    
    func testInsetsContentViewsToSafeArea() {
        let insetsContentViewsToSafeArea = false
        
        let style = TableViewStyle.insetsContentViewsToSafeArea(insetsContentViewsToSafeArea)
        
        tableView.setStyle(style)
        
        XCTAssertEqual(tableView.insetsContentViewsToSafeArea, insetsContentViewsToSafeArea)
    }
}
