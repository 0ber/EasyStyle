import XCTest
@testable import Demo

class TextViewStyleTests: XCTestCase {
    
    var textView: UITextView!

    override func setUp() {
        super.setUp()
        
        textView = UITextView()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreateViewStyle() {
        
        let style = TextViewStyle.backgroundColor(.red)

        XCTAssertNotNil(style.style)
    }
    
    func testText() {
        let text = "some text"
        
        let style = TextViewStyle.text(text)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.text, text)
    }
    
    func testAttributedText() {
        let text = NSAttributedString(string: "some text")
        
        let style = TextViewStyle.attributedText(text)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.attributedText.string, text.string)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 12)
        
        let style = TextViewStyle.font(font)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.font, font)
    }
    
    func testTextColor() {
        let textColor = UIColor.red
        
        let style = TextViewStyle.textColor(textColor)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.textColor, textColor)
    }
    
    func testIsEditable() {
        let isEditable = false
        
        let style = TextViewStyle.isEditable(isEditable)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.isEditable, isEditable)
    }
    
    func testAllowsEditingTextAttributes() {
        let allowsEditingTextAttributes = true
        
        let style = TextViewStyle.allowsEditingTextAttributes(allowsEditingTextAttributes)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.allowsEditingTextAttributes, allowsEditingTextAttributes)
    }
    
    func testDataDetectorTypes() {
        let dataDetectorTypes = UIDataDetectorTypes.all
        
        let style = TextViewStyle.dataDetectorTypes(dataDetectorTypes)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.dataDetectorTypes, dataDetectorTypes)
    }
    
    func testTextAlignment() {
        let textAlignment = NSTextAlignment.center
        
        let style = TextViewStyle.textAlignment(textAlignment)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.textAlignment, textAlignment)
    }
    
    func testTypingAttributes() {
        let color = UIColor.blue
        let typingAttributes = [NSAttributedStringKey.foregroundColor.rawValue: color]
        
        let style = TextViewStyle.typingAttributes(typingAttributes)

        textView.setStyle(style)
        
        let returnColor = textView.typingAttributes[NSAttributedStringKey.foregroundColor.rawValue] as? UIColor
        
        XCTAssertEqual(returnColor, color)
    }
    
    func testLinkTextAttributes() {
        let color = UIColor.blue
        let linkTextAttributes = [NSAttributedStringKey.foregroundColor.rawValue: color]
        
        let style = TextViewStyle.linkTextAttributes(linkTextAttributes)

        textView.setStyle(style)
        
        let returnColor = textView.linkTextAttributes[NSAttributedStringKey.foregroundColor.rawValue] as? UIColor
        
        XCTAssertEqual(returnColor, color)
    }
    
    func testTextContainerInset() {
        let textContainerInset = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = TextViewStyle.textContainerInset(textContainerInset)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.textContainerInset, textContainerInset)
    }
    
    func testSelectedRange() {
        let selectedRange = NSRange(location: 1, length: 2)
        
        let style = TextViewStyle.selectedRange(selectedRange)
        textView.text = "some text"
        
        textView.setStyle(style)
        
        XCTAssertEqual(textView.selectedRange, selectedRange)
    }
    
    func testClearsOnInsertion() {
        let clearsOnInsertion = true
        
        let style = TextViewStyle.clearsOnInsertion(clearsOnInsertion)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.clearsOnInsertion, clearsOnInsertion)
    }
    
    func testIsSelectable() {
        let isSelectable = false
        
        let style = TextViewStyle.isSelectable(isSelectable)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.isSelectable, isSelectable)
    }
    
    func testInputView() {
        let inputView = UIView()
        inputView.tag = 11
        
        let style = TextViewStyle.inputView(inputView)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.inputView?.tag, inputView.tag)
    }
    
    func testInputAccessoryView() {
        let inputAccessoryView = UIView()
        inputAccessoryView.tag = 11
        
        let style = TextViewStyle.inputAccessoryView(inputAccessoryView)

        textView.setStyle(style)
        
        XCTAssertEqual(textView.inputAccessoryView?.tag, inputAccessoryView.tag)
    }
}
