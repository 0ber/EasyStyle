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
        let labelStyle = LabelStyle(style: style)
        
        XCTAssertNotNil(labelStyle.style)
    }
    
    func testText() {
        let text = "some text"
        
        let style = LabelStyle.text(text)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.text, text)
    }
    
    func testAttributedText() {
        let text = "some text"
        let attributedText = NSAttributedString(string: text)
        
        let style = LabelStyle.attributedText(attributedText)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.attributedText?.string, attributedText.string)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 18)
        
        let style = LabelStyle.font(font)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.font, font)
    }
    
    func testTextColor() {
        let color = UIColor.red
        
        let style = LabelStyle.textColor(color)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.textColor, color)
    }
    
    func testTextAligment() {
        let textAligment = NSTextAlignment.center
        
        let style = LabelStyle.textAligment(textAligment)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.textAlignment, textAligment)
    }
    
    func testLineBreakMode() {
        let lineBreakMode = NSLineBreakMode.byClipping
        
        let style = LabelStyle.lineBreakMode(lineBreakMode)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.lineBreakMode, lineBreakMode)
    }
    
    func testBaselineAdjustment() {
        let baselineAdjustment = UIBaselineAdjustment.alignCenters
        
        let style = LabelStyle.baselineAdjustment(baselineAdjustment)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.baselineAdjustment, baselineAdjustment)
    }
    
    func testNumberOfLines() {
        let numberOfLines = 6
        
        let style = LabelStyle.numberOfLines(numberOfLines)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.numberOfLines, numberOfLines)
    }
    
    func testHighlightedTextColor() {
        let highlightedTextColor = UIColor.red
        
        let style = LabelStyle.highlightedTextColor(highlightedTextColor)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.highlightedTextColor, highlightedTextColor)
    }
    
    func testShadowColor() {
        let shadowColor = UIColor.red
        
        let style = LabelStyle.shadowColor(shadowColor)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.shadowColor, shadowColor)
    }
    
    func testShadowOffset() {
        let shadowOffset = CGSize(width: 23, height: 43)
        
        let style = LabelStyle.shadowOffset(shadowOffset)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.shadowOffset, shadowOffset)
    }
    
    func testIsEnabled() {
        let isEnabled = false
        
        let style = LabelStyle.isEnabled(isEnabled)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.isEnabled, isEnabled)
    }
    
    func testAdjustsFontSizeToFitWidth() {
        let adjustsFontSizeToFitWidth = true
        
        let style = LabelStyle.adjustsFontSizeToFitWidth(adjustsFontSizeToFitWidth)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.adjustsFontSizeToFitWidth, adjustsFontSizeToFitWidth)
    }
    
    func testAllowsDefaultTighteningForTruncation() {
        let allowsDefaultTighteningForTruncation = true
        
        let style = LabelStyle.allowsDefaultTighteningForTruncation(allowsDefaultTighteningForTruncation)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.allowsDefaultTighteningForTruncation, allowsDefaultTighteningForTruncation)
    }
    
    func testMinimumScaleFactor() {
        let minimumScaleFactor: CGFloat = 1
        
        let style = LabelStyle.minimumScaleFactor(minimumScaleFactor)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.minimumScaleFactor, minimumScaleFactor)
    }
    
    func testIsHighlighted() {
        let isHighlighted = true
        
        let style = LabelStyle.isHighlighted(isHighlighted)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.isHighlighted, isHighlighted)
    }
    
    func testPreferredMaxLayoutWidth() {
        let preferredMaxLayoutWidth: CGFloat = 3
        
        let style = LabelStyle.preferredMaxLayoutWidth(preferredMaxLayoutWidth)
        let labelStyle = LabelStyle(style: style)
        
        label.setStyle(labelStyle)
        
        XCTAssertEqual(label.preferredMaxLayoutWidth, preferredMaxLayoutWidth)
    }
}
