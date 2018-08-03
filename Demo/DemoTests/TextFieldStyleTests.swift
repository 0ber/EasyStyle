import XCTest
@testable import Demo

class TextFieldStyleTests: XCTestCase {
    
    var textField: UITextField!

    override func setUp() {
        super.setUp()
        textField = UITextField()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCreateViewStyle() {
        
        let style = TextFieldStyle.backgroundColor(.red)
        let textSytle = TextFieldStyle(style: style)
        
        XCTAssertNotNil(textSytle.style)
    }
    
    func testText() {
        let text = "some text"
        
        let style = TextFieldStyle.text(text)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.text, text)
    }
    
    func testAttributedText() {
        let attributedText = NSAttributedString(string: "some text")
        
        let style = TextFieldStyle.attributedText(attributedText)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.attributedText?.string, attributedText.string)
    }
    
    func testPlaceholder() {
        let placeholder = "some text"
        
        let style = TextFieldStyle.placeholder(placeholder)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.placeholder, placeholder)
    }
    
    func testAttributedPlaceholder() {
        let attributedText = NSAttributedString(string: "some text")
        
        let style = TextFieldStyle.attributedPlaceholder(attributedText)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.attributedPlaceholder?.string, attributedText.string)
    }
    
    func testDefaultTextAttributes() {
        let color = UIColor.red
        let defaultTextAttributes = [NSAttributedStringKey.foregroundColor.rawValue: color]

        let style = TextFieldStyle.defaultTextAttributes(defaultTextAttributes)
        let viewStyle = TextFieldStyle(style: style)

        textField.setStyle(viewStyle)

        let returnColor = textField.defaultTextAttributes[NSAttributedStringKey.foregroundColor.rawValue] as? UIColor

        XCTAssertEqual(returnColor, color)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 18)
        
        let style = TextFieldStyle.font(font)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.font, font)
    }
    
    func testTextColor() {
        let textColor = UIColor.red
        
        let style = TextFieldStyle.textColor(textColor)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.textColor, textColor)
    }
    
    func testTextAlignment() {
        let textAlignment = NSTextAlignment.center
        
        let style = TextFieldStyle.textAlignment(textAlignment)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.textAlignment, textAlignment)
    }
    
    func testAdjustsFontSizeToFitWidth() {
        let adjustsFontSizeToFitWidth = true
        
        let style = TextFieldStyle.adjustsFontSizeToFitWidth(adjustsFontSizeToFitWidth)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.adjustsFontSizeToFitWidth, adjustsFontSizeToFitWidth)
    }
    
    func testMinimumFontSize() {
        let minimumFontSize: CGFloat = 6
        
        let style = TextFieldStyle.minimumFontSize(minimumFontSize)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.minimumFontSize, minimumFontSize)
    }
    
    func testClearsOnBeginEditing() {
        let clearsOnBeginEditing = true
        
        let style = TextFieldStyle.clearsOnBeginEditing(clearsOnBeginEditing)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.clearsOnBeginEditing, clearsOnBeginEditing)
    }
    
    func testClearsOnInsertion() {
        let clearsOnInsertion = true
        
        let style = TextFieldStyle.clearsOnInsertion(clearsOnInsertion)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.clearsOnInsertion, clearsOnInsertion)
    }
    
    func testAllowsEditingTextAttributes() {
        let allowsEditingTextAttributes = true
        
        let style = TextFieldStyle.allowsEditingTextAttributes(allowsEditingTextAttributes)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.allowsEditingTextAttributes, allowsEditingTextAttributes)
    }
    
    func testBorderStyle() {
        let borderStyle = UITextBorderStyle.bezel
        
        let style = TextFieldStyle.borderStyle(borderStyle)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.borderStyle, borderStyle)
    }
    
    func testBackground() {
        let background = UIImage()

        let style = TextFieldStyle.background(background)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.background, background)
    }
    
    func testDisabledBackground() {
        let disabledBackground = UIImage()
        
        let style = TextFieldStyle.disabledBackground(disabledBackground)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.disabledBackground, disabledBackground)
    }
    
    func testClearButtonMode() {
        let clearButtonMode = UITextFieldViewMode.always
        
        let style = TextFieldStyle.clearButtonMode(clearButtonMode)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.clearButtonMode, clearButtonMode)
    }
    
    func testLeftView() {
        let leftView = UIView()
        
        let style = TextFieldStyle.leftView(leftView)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.leftView, leftView)
    }
    
    func testLeftViewMode() {
        let leftViewMode = UITextFieldViewMode.always
        
        let style = TextFieldStyle.leftViewMode(leftViewMode)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.leftViewMode, leftViewMode)
    }
    
    func testRightView() {
        let rightView = UIView()
        
        let style = TextFieldStyle.rightView(rightView)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.rightView, rightView)
    }
    
    func testRightViewMode() {
        let rightViewMode = UITextFieldViewMode.always
        
        let style = TextFieldStyle.rightViewMode(rightViewMode)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.rightViewMode, rightViewMode)
    }
    
    func testInputView() {
        let inputView = UIView()

        let style = TextFieldStyle.inputView(inputView)
        let viewStyle = TextFieldStyle(style: style)

        textField.setStyle(viewStyle)

        XCTAssertEqual(textField.inputView, inputView)
    }
    
    func testInputAccessoryView() {
        let inputAccessoryView = UIView()
        
        let style = TextFieldStyle.inputAccessoryView(inputAccessoryView)
        let viewStyle = TextFieldStyle(style: style)
        
        textField.setStyle(viewStyle)
        
        XCTAssertEqual(textField.inputAccessoryView, inputAccessoryView)
    }
}
