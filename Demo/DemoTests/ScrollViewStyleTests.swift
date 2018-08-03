import XCTest
@testable import Demo

class ScrollViewStyleTests: XCTestCase {
    
    var scrollView: UIScrollView!
    
    override func setUp() {
        super.setUp()
        scrollView = UIScrollView()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreateScrollViewStyle() {
        
        let style = ScrollViewStyle.backgroundColor(.red)
        let scrollViewStyle = ScrollViewStyle(style: style)
        
        XCTAssertNotNil(scrollViewStyle.style)
    }
    
    func testContentSize() {
        let contentSize = CGSize(width: 10, height: 14)
        
        let style = ScrollViewStyle.contentSize(contentSize)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.contentSize, contentSize)
    }
    
    func testContentOffset() {
        let contentOffset = CGPoint(x: 2, y: 5)
        
        let style = ScrollViewStyle.contentOffset(contentOffset)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.contentOffset, contentOffset)
    }
    
    func testContentInset() {
        let contentInset = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ScrollViewStyle.contentInset(contentInset)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.contentInset, contentInset)
    }
    
    func testContentInsetAdjustmentBehavior() {
        let contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentBehavior.always
        
        let style = ScrollViewStyle.contentInsetAdjustmentBehavior(contentInsetAdjustmentBehavior)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.contentInsetAdjustmentBehavior, contentInsetAdjustmentBehavior)
    }
    
    func testIsScrollEnabled() {
        let isScrollEnabled = false
        
        let style = ScrollViewStyle.isScrollEnabled(isScrollEnabled)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.isScrollEnabled, isScrollEnabled)
    }
    
    func testIsDirectionalLockEnabled() {
        let isDirectionalLockEnabled = true
        
        let style = ScrollViewStyle.isDirectionalLockEnabled(isDirectionalLockEnabled)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.isDirectionalLockEnabled, isDirectionalLockEnabled)
    }
    
    func testIsPagingEnabled() {
        let isPagingEnabled = true
        
        let style = ScrollViewStyle.isPagingEnabled(isPagingEnabled)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.isPagingEnabled, isPagingEnabled)
    }
    
    func testScrollsToTop() {
        let scrollsToTop = false
        
        let style = ScrollViewStyle.scrollsToTop(scrollsToTop)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.scrollsToTop, scrollsToTop)
    }
    
    func testBounces() {
        let bounces = false
        
        let style = ScrollViewStyle.bounces(bounces)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.bounces, bounces)
    }
    
    func testAlwaysBounceVertical() {
        let alwaysBounceVertical = true
        
        let style = ScrollViewStyle.alwaysBounceVertical(alwaysBounceVertical)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.alwaysBounceVertical, alwaysBounceVertical)
    }
    
    func testAlwaysBounceHorizontal() {
        let alwaysBounceHorizontal = true
        
        let style = ScrollViewStyle.alwaysBounceHorizontal(alwaysBounceHorizontal)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.alwaysBounceHorizontal, alwaysBounceHorizontal)
    }
    
    func testDecelerationRate() {
        let decelerationRate: CGFloat =  UIScrollViewDecelerationRateFast
        
        let style = ScrollViewStyle.decelerationRate(decelerationRate)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.decelerationRate, decelerationRate)
    }
    
    func testIndicatorStyle() {
        let indicatorStyle = UIScrollViewIndicatorStyle.black
        
        let style = ScrollViewStyle.indicatorStyle(indicatorStyle)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.indicatorStyle, indicatorStyle)
    }
    
    func testScrollIndicatorInsets() {
        let scrollIndicatorInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ScrollViewStyle.scrollIndicatorInsets(scrollIndicatorInsets)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.scrollIndicatorInsets, scrollIndicatorInsets)
    }
    
    func testShowsHorizontalScrollIndicator() {
        let showsHorizontalScrollIndicator = false
        
        let style = ScrollViewStyle.showsHorizontalScrollIndicator(showsHorizontalScrollIndicator)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.showsHorizontalScrollIndicator, showsHorizontalScrollIndicator)
    }
    
    func testShowsVerticalScrollIndicator() {
        let showsVerticalScrollIndicator = false
        
        let style = ScrollViewStyle.showsVerticalScrollIndicator(showsVerticalScrollIndicator)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.showsVerticalScrollIndicator, showsVerticalScrollIndicator)
    }
    
    func testRefreshControl() {
        let refreshControl = UIRefreshControl()
        
        let style = ScrollViewStyle.refreshControl(refreshControl)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.refreshControl, refreshControl)
    }
    
    func testCanCancelContentTouches() {
        let canCancelContentTouches = false
        
        let style = ScrollViewStyle.canCancelContentTouches(canCancelContentTouches)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.canCancelContentTouches, canCancelContentTouches)
    }
    
    func testDelaysContentTouches() {
        let delaysContentTouches = false
        
        let style = ScrollViewStyle.delaysContentTouches(delaysContentTouches)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.delaysContentTouches, delaysContentTouches)
    }
    
    func testMaximumZoomScale() {
        let maximumZoomScale: CGFloat = 2.2

        let style = ScrollViewStyle.maximumZoomScale(maximumZoomScale)
        let viewStyle = ScrollViewStyle(style: style)

        scrollView.setStyle(viewStyle)

        XCTAssertEqual(scrollView.maximumZoomScale, maximumZoomScale)
    }
    
    func testMinimumZoomScale() {
        let minimumZoomScale: CGFloat = 2.2
        
        let style = ScrollViewStyle.minimumZoomScale(minimumZoomScale)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.minimumZoomScale, minimumZoomScale)
    }
    
    func testBouncesZoom() {
        let bouncesZoom = false
        
        let style = ScrollViewStyle.bouncesZoom(bouncesZoom)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.bouncesZoom, bouncesZoom)
    }
    
    func testKeyboardDismissMode() {
        let keyboardDismissMode = UIScrollViewKeyboardDismissMode.onDrag
        
        let style = ScrollViewStyle.keyboardDismissMode(keyboardDismissMode)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.keyboardDismissMode, keyboardDismissMode)
    }
    
    func testIndexDisplayMode() {
        let indexDisplayMode = UIScrollViewIndexDisplayMode.alwaysHidden
        
        let style = ScrollViewStyle.indexDisplayMode(indexDisplayMode)
        let viewStyle = ScrollViewStyle(style: style)
        
        scrollView.setStyle(viewStyle)
        
        XCTAssertEqual(scrollView.indexDisplayMode, indexDisplayMode)
    }
}
