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
        let isSelected = true
        
        let style = ControlStyle.isSelected(isSelected)

        control.setStyle(style)
        
        XCTAssertEqual(control.isSelected, isSelected)
    }
    
    func testIsHighlighted() {
        let isHighlighted = true
        
        let style = ControlStyle.isHighlighted(isHighlighted)

        control.setStyle(style)
        
        XCTAssertEqual(control.isHighlighted, isHighlighted)
    }
    
    func testContentVerticalAlignment() {
        let contentVerticalAlignment = UIControl.ContentVerticalAlignment.bottom
        
        let style = ControlStyle.contentVerticalAlignment(contentVerticalAlignment)

        control.setStyle(style)
        
        XCTAssertEqual(control.contentVerticalAlignment, contentVerticalAlignment)
    }
    
    func testContentHorizontalAlignment() {
        let contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        
        let style = ControlStyle.contentHorizontalAlignment(contentHorizontalAlignment)

        control.setStyle(style)
        
        XCTAssertEqual(control.contentHorizontalAlignment, contentHorizontalAlignment)
    }
}
