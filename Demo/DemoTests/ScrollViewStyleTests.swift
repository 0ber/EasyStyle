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

        XCTAssertNotNil(style.style)
    }
    
    func testContentSize() {
        let contentSize = CGSize(width: 10, height: 14)
        
        let style = ScrollViewStyle.contentSize(contentSize)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.contentSize, contentSize)
    }
    
    func testContentOffset() {
        let contentOffset = CGPoint(x: 2, y: 5)
        
        let style = ScrollViewStyle.contentOffset(contentOffset)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.contentOffset, contentOffset)
    }
    
    func testContentInset() {
        let contentInset = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ScrollViewStyle.contentInset(contentInset)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.contentInset, contentInset)
    }
    
//    func testContentInsetAdjustmentBehavior() {
//        let contentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior.always
//
//        let style = ScrollViewStyle.contentInsetAdjustmentBehavior(contentInsetAdjustmentBehavior)
//
//        scrollView.setStyle(style)
//
//        XCTAssertEqual(scrollView.contentInsetAdjustmentBehavior, contentInsetAdjustmentBehavior)
//    }
    
    func testIsScrollEnabled() {
        let isScrollEnabled = false
        
        let style = ScrollViewStyle.isScrollEnabled(isScrollEnabled)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.isScrollEnabled, isScrollEnabled)
    }
    
    func testIsDirectionalLockEnabled() {
        let isDirectionalLockEnabled = true
        
        let style = ScrollViewStyle.isDirectionalLockEnabled(isDirectionalLockEnabled)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.isDirectionalLockEnabled, isDirectionalLockEnabled)
    }
    
    func testIsPagingEnabled() {
        let isPagingEnabled = true
        
        let style = ScrollViewStyle.isPagingEnabled(isPagingEnabled)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.isPagingEnabled, isPagingEnabled)
    }
    
    func testScrollsToTop() {
        let scrollsToTop = false
        
        let style = ScrollViewStyle.scrollsToTop(scrollsToTop)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.scrollsToTop, scrollsToTop)
    }
    
    func testBounces() {
        let bounces = false
        
        let style = ScrollViewStyle.bounces(bounces)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.bounces, bounces)
    }
    
    func testAlwaysBounceVertical() {
        let alwaysBounceVertical = true
        
        let style = ScrollViewStyle.alwaysBounceVertical(alwaysBounceVertical)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.alwaysBounceVertical, alwaysBounceVertical)
    }
    
    func testAlwaysBounceHorizontal() {
        let alwaysBounceHorizontal = true
        
        let style = ScrollViewStyle.alwaysBounceHorizontal(alwaysBounceHorizontal)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.alwaysBounceHorizontal, alwaysBounceHorizontal)
    }
    
    func testDecelerationRate() {
        let decelerationRate =  UIScrollView.DecelerationRate.fast
        
        let style = ScrollViewStyle.decelerationRate(decelerationRate)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.decelerationRate, decelerationRate)
    }
    
    func testIndicatorStyle() {
        let indicatorStyle = UIScrollView.IndicatorStyle.black
        
        let style = ScrollViewStyle.indicatorStyle(indicatorStyle)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.indicatorStyle, indicatorStyle)
    }
    
    func testScrollIndicatorInsets() {
        let scrollIndicatorInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ScrollViewStyle.scrollIndicatorInsets(scrollIndicatorInsets)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.scrollIndicatorInsets, scrollIndicatorInsets)
    }
    
    func testShowsHorizontalScrollIndicator() {
        let showsHorizontalScrollIndicator = false
        
        let style = ScrollViewStyle.showsHorizontalScrollIndicator(showsHorizontalScrollIndicator)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.showsHorizontalScrollIndicator, showsHorizontalScrollIndicator)
    }
    
    func testShowsVerticalScrollIndicator() {
        let showsVerticalScrollIndicator = false
        
        let style = ScrollViewStyle.showsVerticalScrollIndicator(showsVerticalScrollIndicator)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.showsVerticalScrollIndicator, showsVerticalScrollIndicator)
    }
    
    func testRefreshControl() {
        let refreshControl = UIRefreshControl()
        
        let style = ScrollViewStyle.refreshControl(refreshControl)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.refreshControl, refreshControl)
    }
    
    func testCanCancelContentTouches() {
        let canCancelContentTouches = false
        
        let style = ScrollViewStyle.canCancelContentTouches(canCancelContentTouches)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.canCancelContentTouches, canCancelContentTouches)
    }
    
    func testDelaysContentTouches() {
        let delaysContentTouches = false
        
        let style = ScrollViewStyle.delaysContentTouches(delaysContentTouches)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.delaysContentTouches, delaysContentTouches)
    }
    
    func testMaximumZoomScale() {
        let maximumZoomScale: CGFloat = 2.2

        let style = ScrollViewStyle.maximumZoomScale(maximumZoomScale)

        scrollView.setStyle(style)

        XCTAssertEqual(scrollView.maximumZoomScale, maximumZoomScale)
    }
    
    func testMinimumZoomScale() {
        let minimumZoomScale: CGFloat = 2.2
        
        let style = ScrollViewStyle.minimumZoomScale(minimumZoomScale)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.minimumZoomScale, minimumZoomScale)
    }
    
    func testBouncesZoom() {
        let bouncesZoom = false
        
        let style = ScrollViewStyle.bouncesZoom(bouncesZoom)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.bouncesZoom, bouncesZoom)
    }
    
    func testKeyboardDismissMode() {
        let keyboardDismissMode = UIScrollView.KeyboardDismissMode.onDrag
        
        let style = ScrollViewStyle.keyboardDismissMode(keyboardDismissMode)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.keyboardDismissMode, keyboardDismissMode)
    }
    
    func testIndexDisplayMode() {
        let indexDisplayMode = UIScrollView.IndexDisplayMode.alwaysHidden
        
        let style = ScrollViewStyle.indexDisplayMode(indexDisplayMode)
        
        scrollView.setStyle(style)
        
        XCTAssertEqual(scrollView.indexDisplayMode, indexDisplayMode)
    }
}
