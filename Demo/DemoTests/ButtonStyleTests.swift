import XCTest
@testable import Demo

class ButtonStyleTests: XCTestCase {
    
    var button: UIButton!

    override func setUp() {
        super.setUp()
        button = UIButton()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateButtonStyle() {
        
        let style = ButtonStyle.backgroundColor(.red)
        let buttonStyle = ButtonStyle(style: style)
        
        XCTAssertNotNil(buttonStyle.style)
    }
    
    func testTitleBackgroundView() {
        let title = "some text"
        
        let style = ButtonStyle.title(title, .normal)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.title(for: .normal), title)
    }
    
    func testAttributedTitle() {
        let attributedTitle = NSAttributedString(string: "some text")
        
        let style = ButtonStyle.attributedTitle(attributedTitle, .normal)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.attributedTitle(for: .normal)?.string, attributedTitle.string)
    }
    
    func testTitleColor() {
        let titleColor = UIColor.red
        
        let style = ButtonStyle.titleColor(titleColor, .normal)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.titleColor(for: .normal), titleColor)
    }
    
    func testTitleShadowColor() {
        let titleShadowColor = UIColor.red
        
        let style = ButtonStyle.titleShadowColor(titleShadowColor, .normal)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.titleShadowColor(for: .normal), titleShadowColor)
    }
    
    func testReversesTitleShadowWhenHighlighted() {
        let reversesTitleShadowWhenHighlighted = true
        
        let style = ButtonStyle.reversesTitleShadowWhenHighlighted(reversesTitleShadowWhenHighlighted)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.reversesTitleShadowWhenHighlighted, reversesTitleShadowWhenHighlighted)
    }
    
    func testAdjustsImageWhenHighlighted() {
        let adjustsImageWhenHighlighted = false
        
        let style = ButtonStyle.adjustsImageWhenHighlighted(adjustsImageWhenHighlighted)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.adjustsImageWhenHighlighted, adjustsImageWhenHighlighted)
    }
    
    func testAdjustsImageWhenDisabled() {
        let adjustsImageWhenDisabled = true
        
        let style = ButtonStyle.adjustsImageWhenDisabled(adjustsImageWhenDisabled)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.adjustsImageWhenDisabled, adjustsImageWhenDisabled)
    }
    
    func testShowsTouchWhenHighlighted() {
        let showsTouchWhenHighlighted = true
        
        let style = ButtonStyle.showsTouchWhenHighlighted(showsTouchWhenHighlighted)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.showsTouchWhenHighlighted, showsTouchWhenHighlighted)
    }
    
    func testBackgroundImage() {
        let backgroundImage = UIImage()
        
        let style = ButtonStyle.backgroundImage(backgroundImage, .normal)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.backgroundImage(for: .normal), backgroundImage)
    }
    
    func testImage() {
        let image = UIImage()
        
        let style = ButtonStyle.image(image, .normal)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.image(for: .normal), image)
    }
    
    func testTintColor() {
        let tintColor = UIColor.red
        
        let style = ButtonStyle.tintColor(tintColor)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.tintColor, tintColor)
    }
    
    func testContentEdgeInsets() {
        let contentEdgeInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ButtonStyle.contentEdgeInsets(contentEdgeInsets)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.contentEdgeInsets, contentEdgeInsets)
    }
    
    func testTitleEdgeInsets() {
        let titleEdgeInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ButtonStyle.titleEdgeInsets(titleEdgeInsets)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.titleEdgeInsets, titleEdgeInsets)
    }
    
    func testImageEdgeInsets() {
        let imageEdgeInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ButtonStyle.imageEdgeInsets(imageEdgeInsets)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.imageEdgeInsets, imageEdgeInsets)
    }
    
    func testTitleFont() {
        let titleFont = UIFont.systemFont(ofSize: 18)
        
        let style = ButtonStyle.titleFont(titleFont)
        let buttonStyle = ButtonStyle(style: style)
        
        button.setStyle(buttonStyle)
        
        XCTAssertEqual(button.titleLabel?.font, titleFont)
    }
}
