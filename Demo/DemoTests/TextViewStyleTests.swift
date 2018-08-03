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
        let textViewStyle = TextViewStyle(style: style)
        
        XCTAssertNotNil(textViewStyle.style)
    }
    
    func testText() {
        let text = "some text"
        
        let style = TextViewStyle.text(text)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.text, text)
    }
    
    func testAttributedText() {
        let text = NSAttributedString(string: "some text")
        
        let style = TextViewStyle.attributedText(text)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.attributedText.string, text.string)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 12)
        
        let style = TextViewStyle.font(font)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.font, font)
    }
    
    func testTextColor() {
        let textColor = UIColor.red
        
        let style = TextViewStyle.textColor(textColor)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.textColor, textColor)
    }
    
    func testIsEditable() {
        let isEditable = false
        
        let style = TextViewStyle.isEditable(isEditable)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.isEditable, isEditable)
    }
    
    func testAllowsEditingTextAttributes() {
        let allowsEditingTextAttributes = true
        
        let style = TextViewStyle.allowsEditingTextAttributes(allowsEditingTextAttributes)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.allowsEditingTextAttributes, allowsEditingTextAttributes)
    }
    
    func testDataDetectorTypes() {
        let dataDetectorTypes = UIDataDetectorTypes.all
        
        let style = TextViewStyle.dataDetectorTypes(dataDetectorTypes)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.dataDetectorTypes, dataDetectorTypes)
    }
    
    func testTextAlignment() {
        let textAlignment = NSTextAlignment.center
        
        let style = TextViewStyle.textAlignment(textAlignment)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.textAlignment, textAlignment)
    }
    
    func testTypingAttributes() {
        let color = UIColor.blue
        let typingAttributes = [NSAttributedStringKey.foregroundColor.rawValue: color]
        
        let style = TextViewStyle.typingAttributes(typingAttributes)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        let returnColor = textView.typingAttributes[NSAttributedStringKey.foregroundColor.rawValue] as? UIColor
        
        XCTAssertEqual(returnColor, color)
    }
    
    func testLinkTextAttributes() {
        let color = UIColor.blue
        let linkTextAttributes = [NSAttributedStringKey.foregroundColor.rawValue: color]
        
        let style = TextViewStyle.linkTextAttributes(linkTextAttributes)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        let returnColor = textView.linkTextAttributes[NSAttributedStringKey.foregroundColor.rawValue] as? UIColor
        
        XCTAssertEqual(returnColor, color)
    }
    
    func testTextContainerInset() {
        let textContainerInset = UIEdgeInsets(top: 1, left: 2, bottom: 3, right: 4)
        
        let style = TextViewStyle.textContainerInset(textContainerInset)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.textContainerInset, textContainerInset)
    }
    
    func testSelectedRange() {
        let selectedRange = NSRange(location: 1, length: 2)
        
        let style = TextViewStyle.selectedRange(selectedRange)
        let viewStyle = TextViewStyle(style: style)
        textView.text = "some text"
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.selectedRange, selectedRange)
    }
    
    func testClearsOnInsertion() {
        let clearsOnInsertion = true
        
        let style = TextViewStyle.clearsOnInsertion(clearsOnInsertion)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.clearsOnInsertion, clearsOnInsertion)
    }
    
    func testIsSelectable() {
        let isSelectable = false
        
        let style = TextViewStyle.isSelectable(isSelectable)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.isSelectable, isSelectable)
    }
    
    func testInputView() {
        let inputView = UIView()
        inputView.tag = 11
        
        let style = TextViewStyle.inputView(inputView)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.inputView?.tag, inputView.tag)
    }
    
    func testInputAccessoryView() {
        let inputAccessoryView = UIView()
        inputAccessoryView.tag = 11
        
        let style = TextViewStyle.inputAccessoryView(inputAccessoryView)
        let viewStyle = TextViewStyle(style: style)
        
        textView.setStyle(viewStyle)
        
        XCTAssertEqual(textView.inputAccessoryView?.tag, inputAccessoryView.tag)
    }
}
