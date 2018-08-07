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

        XCTAssertNotNil(style.style)
    }
    
    func testTitleBackgroundView() {
        let title = "some text"
        
        let style = ButtonStyle.title(title, .normal)
        button.setStyle(style)
        
        XCTAssertEqual(button.title(for: .normal), title)
    }
    
    func testAttributedTitle() {
        let attributedTitle = NSAttributedString(string: "some text")
        
        let style = ButtonStyle.attributedTitle(attributedTitle, .normal)
        button.setStyle(style)
        
        XCTAssertEqual(button.attributedTitle(for: .normal)?.string, attributedTitle.string)
    }
    
    func testTitleColor() {
        let titleColor = UIColor.red
        
        let style = ButtonStyle.titleColor(titleColor, .normal)
        button.setStyle(style)
        
        XCTAssertEqual(button.titleColor(for: .normal), titleColor)
    }
    
    func testTitleShadowColor() {
        let titleShadowColor = UIColor.red
        
        let style = ButtonStyle.titleShadowColor(titleShadowColor, .normal)
        button.setStyle(style)
        
        XCTAssertEqual(button.titleShadowColor(for: .normal), titleShadowColor)
    }
    
    func testReversesTitleShadowWhenHighlighted() {
        let reversesTitleShadowWhenHighlighted = true
        
        let style = ButtonStyle.reversesTitleShadowWhenHighlighted(reversesTitleShadowWhenHighlighted)
        button.setStyle(style)
        
        XCTAssertEqual(button.reversesTitleShadowWhenHighlighted, reversesTitleShadowWhenHighlighted)
    }
    
    func testAdjustsImageWhenHighlighted() {
        let adjustsImageWhenHighlighted = false
        
        let style = ButtonStyle.adjustsImageWhenHighlighted(adjustsImageWhenHighlighted)
        button.setStyle(style)
        
        XCTAssertEqual(button.adjustsImageWhenHighlighted, adjustsImageWhenHighlighted)
    }
    
    func testAdjustsImageWhenDisabled() {
        let adjustsImageWhenDisabled = true
        
        let style = ButtonStyle.adjustsImageWhenDisabled(adjustsImageWhenDisabled)
        button.setStyle(style)
        
        XCTAssertEqual(button.adjustsImageWhenDisabled, adjustsImageWhenDisabled)
    }
    
    func testShowsTouchWhenHighlighted() {
        let showsTouchWhenHighlighted = true
        
        let style = ButtonStyle.showsTouchWhenHighlighted(showsTouchWhenHighlighted)
        button.setStyle(style)
        
        XCTAssertEqual(button.showsTouchWhenHighlighted, showsTouchWhenHighlighted)
    }
    
    func testBackgroundImage() {
        let backgroundImage = UIImage()
        
        let style = ButtonStyle.backgroundImage(backgroundImage, .normal)
        button.setStyle(style)
        
        XCTAssertEqual(button.backgroundImage(for: .normal), backgroundImage)
    }
    
    func testImage() {
        let image = UIImage()
        
        let style = ButtonStyle.image(image, .normal)
        button.setStyle(style)
        
        XCTAssertEqual(button.image(for: .normal), image)
    }
    
    func testTintColor() {
        let tintColor = UIColor.red
        
        let style = ButtonStyle.tintColor(tintColor)
        button.setStyle(style)
        
        XCTAssertEqual(button.tintColor, tintColor)
    }
    
    func testContentEdgeInsets() {
        let contentEdgeInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ButtonStyle.contentEdgeInsets(contentEdgeInsets)
        button.setStyle(style)
        
        XCTAssertEqual(button.contentEdgeInsets, contentEdgeInsets)
    }
    
    func testTitleEdgeInsets() {
        let titleEdgeInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ButtonStyle.titleEdgeInsets(titleEdgeInsets)
        button.setStyle(style)
        
        XCTAssertEqual(button.titleEdgeInsets, titleEdgeInsets)
    }
    
    func testImageEdgeInsets() {
        let imageEdgeInsets = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = ButtonStyle.imageEdgeInsets(imageEdgeInsets)
        button.setStyle(style)
        
        XCTAssertEqual(button.imageEdgeInsets, imageEdgeInsets)
    }
    
    func testTitleFont() {
        let titleFont = UIFont.systemFont(ofSize: 18)
        
        let style = ButtonStyle.titleFont(titleFont)
        button.setStyle(style)
        
        XCTAssertEqual(button.titleLabel?.font, titleFont)
    }
}
