import XCTest
@testable import Demo

class CollectionViewStyleTests: XCTestCase {
    
    var collectionView: UICollectionView!

    override func setUp() {
        super.setUp()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateCollectionViewStyle() {
        
        let style = CollectionViewStyle.backgroundColor(.red)
        let collectionViewStyle = CollectionViewStyle(style: style)
        
        XCTAssertNotNil(collectionViewStyle.style)
    }
    
    func testBackgroundView() {
        let backgroundView = UIView()
        
        let style = CollectionViewStyle.backgroundView(backgroundView)
        let collectionStyle = CollectionViewStyle(style: style)
        
        collectionView.setStyle(collectionStyle)
        
        XCTAssertEqual(collectionView.backgroundView, backgroundView)
    }
    
    func testIsPrefetchingEnabled() {
        let isPrefetchingEnabled = false
        
        let style = CollectionViewStyle.isPrefetchingEnabled(isPrefetchingEnabled)
        let collectionStyle = CollectionViewStyle(style: style)
        
        collectionView.setStyle(collectionStyle)
        
        XCTAssertEqual(collectionView.isPrefetchingEnabled, isPrefetchingEnabled)
    }
    
    func testDragInteractionEnabled() {
        let dragInteractionEnabled = false
        
        let style = CollectionViewStyle.dragInteractionEnabled(dragInteractionEnabled)
        let collectionStyle = CollectionViewStyle(style: style)
        
        collectionView.setStyle(collectionStyle)
        
        XCTAssertEqual(collectionView.dragInteractionEnabled, dragInteractionEnabled)
    }
    
    func testAllowsSelection() {
        let allowsSelection = false
        
        let style = CollectionViewStyle.allowsSelection(allowsSelection)
        let collectionStyle = CollectionViewStyle(style: style)
        
        collectionView.setStyle(collectionStyle)
        
        XCTAssertEqual(collectionView.allowsSelection, allowsSelection)
    }
    
    func testAllowsMultipleSelection() {
        let allowsMultipleSelection = false
        
        let style = CollectionViewStyle.allowsMultipleSelection(allowsMultipleSelection)
        let collectionStyle = CollectionViewStyle(style: style)
        
        collectionView.setStyle(collectionStyle)
        
        XCTAssertEqual(collectionView.allowsMultipleSelection, allowsMultipleSelection)
    }
}
