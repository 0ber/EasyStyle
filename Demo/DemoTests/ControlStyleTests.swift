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
        
        let controlStyle = ControlStyle(style: style)
        
        XCTAssertNotNil(controlStyle.style)
    }
    
    func testIsEnabled() {
        let isEnabled = false
        
        let style = ControlStyle.isEnabled(isEnabled)
        let viewStyle = ControlStyle(style: style)
        
        control.setStyle(viewStyle)
        
        XCTAssertEqual(control.isEnabled, isEnabled)
    }
    
    func testIsSelected() {
        let isSelected = false
        
        let style = ControlStyle.isEnabled(isSelected)
        let viewStyle = ControlStyle(style: style)
        
        control.setStyle(viewStyle)
        
        XCTAssertEqual(control.isSelected, isSelected)
    }
    
    func testIsHighlighted() {
        let isHighlighted = false
        
        let style = ControlStyle.isEnabled(isHighlighted)
        let viewStyle = ControlStyle(style: style)
        
        control.setStyle(viewStyle)
        
        XCTAssertEqual(control.isHighlighted, isHighlighted)
    }
    
    func testContentVerticalAlignment() {
        let contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        
        let style = ControlStyle.contentVerticalAlignment(contentVerticalAlignment)
        let viewStyle = ControlStyle(style: style)
        
        control.setStyle(viewStyle)
        
        XCTAssertEqual(control.contentVerticalAlignment, contentVerticalAlignment)
    }
    
    func testContentHorizontalAlignment() {
        let contentHorizontalAlignment = UIControlContentHorizontalAlignment.center
        
        let style = ControlStyle.contentHorizontalAlignment(contentHorizontalAlignment)
        let viewStyle = ControlStyle(style: style)
        
        control.setStyle(viewStyle)
        
        XCTAssertEqual(control.contentHorizontalAlignment, contentHorizontalAlignment)
    }
}
