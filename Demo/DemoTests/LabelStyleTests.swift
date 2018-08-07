import XCTest
@testable import Demo

class LabelStyleTests: XCTestCase {
    
    var label: UILabel!
    
    override func setUp() {
        super.setUp()
        label = UILabel()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateLabelStyle() {
        
        let style = LabelStyle.backgroundColor(.red)

        XCTAssertNotNil(style.style)
    }
    
    func testText() {
        let text = "some text"
        
        let style = LabelStyle.text(text)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.text, text)
    }
    
    func testAttributedText() {
        let text = "some text"
        let attributedText = NSAttributedString(string: text)
        
        let style = LabelStyle.attributedText(attributedText)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.attributedText?.string, attributedText.string)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 18)
        
        let style = LabelStyle.font(font)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.font, font)
    }
    
    func testTextColor() {
        let color = UIColor.red
        
        let style = LabelStyle.textColor(color)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.textColor, color)
    }
    
    func testTextAligment() {
        let textAligment = NSTextAlignment.center
        
        let style = LabelStyle.textAligment(textAligment)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.textAlignment, textAligment)
    }
    
    func testLineBreakMode() {
        let lineBreakMode = NSLineBreakMode.byClipping
        
        let style = LabelStyle.lineBreakMode(lineBreakMode)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.lineBreakMode, lineBreakMode)
    }
    
    func testBaselineAdjustment() {
        let baselineAdjustment = UIBaselineAdjustment.alignCenters
        
        let style = LabelStyle.baselineAdjustment(baselineAdjustment)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.baselineAdjustment, baselineAdjustment)
    }
    
    func testNumberOfLines() {
        let numberOfLines = 6
        
        let style = LabelStyle.numberOfLines(numberOfLines)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.numberOfLines, numberOfLines)
    }
    
    func testHighlightedTextColor() {
        let highlightedTextColor = UIColor.red
        
        let style = LabelStyle.highlightedTextColor(highlightedTextColor)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.highlightedTextColor, highlightedTextColor)
    }
    
    func testShadowColor() {
        let shadowColor = UIColor.red
        
        let style = LabelStyle.shadowColor(shadowColor)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.shadowColor, shadowColor)
    }
    
    func testShadowOffset() {
        let shadowOffset = CGSize(width: 23, height: 43)
        
        let style = LabelStyle.shadowOffset(shadowOffset)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.shadowOffset, shadowOffset)
    }
    
    func testIsEnabled() {
        let isEnabled = false
        
        let style = LabelStyle.isEnabled(isEnabled)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.isEnabled, isEnabled)
    }
    
    func testAdjustsFontSizeToFitWidth() {
        let adjustsFontSizeToFitWidth = true
        
        let style = LabelStyle.adjustsFontSizeToFitWidth(adjustsFontSizeToFitWidth)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.adjustsFontSizeToFitWidth, adjustsFontSizeToFitWidth)
    }
    
    func testAllowsDefaultTighteningForTruncation() {
        let allowsDefaultTighteningForTruncation = true
        
        let style = LabelStyle.allowsDefaultTighteningForTruncation(allowsDefaultTighteningForTruncation)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.allowsDefaultTighteningForTruncation, allowsDefaultTighteningForTruncation)
    }
    
    func testMinimumScaleFactor() {
        let minimumScaleFactor: CGFloat = 1
        
        let style = LabelStyle.minimumScaleFactor(minimumScaleFactor)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.minimumScaleFactor, minimumScaleFactor)
    }
    
    func testIsHighlighted() {
        let isHighlighted = true
        
        let style = LabelStyle.isHighlighted(isHighlighted)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.isHighlighted, isHighlighted)
    }
    
    func testPreferredMaxLayoutWidth() {
        let preferredMaxLayoutWidth: CGFloat = 3
        
        let style = LabelStyle.preferredMaxLayoutWidth(preferredMaxLayoutWidth)
        
        label.setStyle(style)
        
        XCTAssertEqual(label.preferredMaxLayoutWidth, preferredMaxLayoutWidth)
    }
}
