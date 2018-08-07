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

        XCTAssertNotNil(style.style)
    }
    
    func testBackgroundView() {
        let backgroundView = UIView()
        
        let style = CollectionViewStyle.backgroundView(backgroundView)
        collectionView.setStyle(style)
        
        XCTAssertEqual(collectionView.backgroundView, backgroundView)
    }
    
    func testIsPrefetchingEnabled() {
        let isPrefetchingEnabled = false
        
        let style = CollectionViewStyle.isPrefetchingEnabled(isPrefetchingEnabled)
        collectionView.setStyle(style)
        
        XCTAssertEqual(collectionView.isPrefetchingEnabled, isPrefetchingEnabled)
    }
    
    func testDragInteractionEnabled() {
        let dragInteractionEnabled = false
        
        let style = CollectionViewStyle.dragInteractionEnabled(dragInteractionEnabled)
        collectionView.setStyle(style)
        
        XCTAssertEqual(collectionView.dragInteractionEnabled, dragInteractionEnabled)
    }
    
    func testAllowsSelection() {
        let allowsSelection = false
        
        let style = CollectionViewStyle.allowsSelection(allowsSelection)
        collectionView.setStyle(style)
        
        XCTAssertEqual(collectionView.allowsSelection, allowsSelection)
    }
    
    func testAllowsMultipleSelection() {
        let allowsMultipleSelection = false
        
        let style = CollectionViewStyle.allowsMultipleSelection(allowsMultipleSelection)
        collectionView.setStyle(style)
        
        XCTAssertEqual(collectionView.allowsMultipleSelection, allowsMultipleSelection)
    }
}
