import XCTest
@testable import Demo

class ControlStyleTests: XCTestCase {
    
    
    var control: UIControl!
    
    override func setUp() {
        super.setUp()
        control = UIControl()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCreateControlStyle() {
    
        let style = ControlStyle.backgroundColor(.red)
        XCTAssertNotNil(style.style)
    }
    
    func testIsEnabled() {
        let isEnabled = false
        
        let style = ControlStyle.isEnabled(isEnabled)

        control.setStyle(style)
        
        XCTAssertEqual(control.isEnabled, isEnabled)
    }
    
    func testIsSelected() {
        let isSelected = false
        
        let style = ControlStyle.isEnabled(isSelected)

        control.setStyle(style)
        
        XCTAssertEqual(control.isSelected, isSelected)
    }
    
    func testIsHighlighted() {
        let isHighlighted = false
        
        let style = ControlStyle.isEnabled(isHighlighted)

        control.setStyle(style)
        
        XCTAssertEqual(control.isHighlighted, isHighlighted)
    }
    
    func testContentVerticalAlignment() {
        let contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        
        let style = ControlStyle.contentVerticalAlignment(contentVerticalAlignment)

        control.setStyle(style)
        
        XCTAssertEqual(control.contentVerticalAlignment, contentVerticalAlignment)
    }
    
    func testContentHorizontalAlignment() {
        let contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
        
        let style = ControlStyle.contentHorizontalAlignment(contentHorizontalAlignment)

        control.setStyle(style)
        
        XCTAssertEqual(control.contentHorizontalAlignment, contentHorizontalAlignment)
    }
}
