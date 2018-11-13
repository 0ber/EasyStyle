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

        XCTAssertNotNil(style.style)
    }
    
    func testText() {
        let text = "some text"
        
        let style = TextFieldStyle.text(text)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.text, text)
    }
    
    func testAttributedText() {
        let attributedText = NSAttributedString(string: "some text")
        
        let style = TextFieldStyle.attributedText(attributedText)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.attributedText?.string, attributedText.string)
    }
    
    func testPlaceholder() {
        let placeholder = "some text"
        
        let style = TextFieldStyle.placeholder(placeholder)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.placeholder, placeholder)
    }
    
    func testAttributedPlaceholder() {
        let attributedText = NSAttributedString(string: "some text")
        
        let style = TextFieldStyle.attributedPlaceholder(attributedText)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.attributedPlaceholder?.string, attributedText.string)
    }
    
    func testDefaultTextAttributes() {
        let color = UIColor.red
        let defaultTextAttributes = [NSAttributedString.Key.foregroundColor: color]

        let style = TextFieldStyle.defaultTextAttributes(defaultTextAttributes)

        textField.setStyle(style)

        let returnColor = convertFromNSAttributedStringKeyDictionary(textField.defaultTextAttributes)[NSAttributedString.Key.foregroundColor.rawValue] as? UIColor

        XCTAssertEqual(returnColor, color)
    }
    
    func testFont() {
        let font = UIFont.systemFont(ofSize: 18)
        
        let style = TextFieldStyle.font(font)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.font, font)
    }
    
    func testTextColor() {
        let textColor = UIColor.red
        
        let style = TextFieldStyle.textColor(textColor)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.textColor, textColor)
    }
    
    func testTextAlignment() {
        let textAlignment = NSTextAlignment.center
        
        let style = TextFieldStyle.textAlignment(textAlignment)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.textAlignment, textAlignment)
    }
    
    func testAdjustsFontSizeToFitWidth() {
        let adjustsFontSizeToFitWidth = true
        
        let style = TextFieldStyle.adjustsFontSizeToFitWidth(adjustsFontSizeToFitWidth)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.adjustsFontSizeToFitWidth, adjustsFontSizeToFitWidth)
    }
    
    func testMinimumFontSize() {
        let minimumFontSize: CGFloat = 6
        
        let style = TextFieldStyle.minimumFontSize(minimumFontSize)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.minimumFontSize, minimumFontSize)
    }
    
    func testClearsOnBeginEditing() {
        let clearsOnBeginEditing = true
        
        let style = TextFieldStyle.clearsOnBeginEditing(clearsOnBeginEditing)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.clearsOnBeginEditing, clearsOnBeginEditing)
    }
    
    func testClearsOnInsertion() {
        let clearsOnInsertion = true
        
        let style = TextFieldStyle.clearsOnInsertion(clearsOnInsertion)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.clearsOnInsertion, clearsOnInsertion)
    }
    
    func testAllowsEditingTextAttributes() {
        let allowsEditingTextAttributes = true
        
        let style = TextFieldStyle.allowsEditingTextAttributes(allowsEditingTextAttributes)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.allowsEditingTextAttributes, allowsEditingTextAttributes)
    }
    
    func testBorderStyle() {
        let borderStyle = UITextField.BorderStyle.bezel
        
        let style = TextFieldStyle.borderStyle(borderStyle)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.borderStyle, borderStyle)
    }
    
    func testBackground() {
        let background = UIImage()

        let style = TextFieldStyle.background(background)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.background, background)
    }
    
    func testDisabledBackground() {
        let disabledBackground = UIImage()
        
        let style = TextFieldStyle.disabledBackground(disabledBackground)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.disabledBackground, disabledBackground)
    }
    
    func testClearButtonMode() {
        let clearButtonMode = UITextField.ViewMode.always
        
        let style = TextFieldStyle.clearButtonMode(clearButtonMode)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.clearButtonMode, clearButtonMode)
    }
    
    func testLeftView() {
        let leftView = UIView()
        
        let style = TextFieldStyle.leftView(leftView)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.leftView, leftView)
    }
    
    func testLeftViewMode() {
        let leftViewMode = UITextField.ViewMode.always
        
        let style = TextFieldStyle.leftViewMode(leftViewMode)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.leftViewMode, leftViewMode)
    }
    
    func testRightView() {
        let rightView = UIView()
        
        let style = TextFieldStyle.rightView(rightView)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.rightView, rightView)
    }
    
    func testRightViewMode() {
        let rightViewMode = UITextField.ViewMode.always
        
        let style = TextFieldStyle.rightViewMode(rightViewMode)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.rightViewMode, rightViewMode)
    }
    
    func testInputView() {
        let inputView = UIView()

        let style = TextFieldStyle.inputView(inputView)
         

        textField.setStyle(style)

        XCTAssertEqual(textField.inputView, inputView)
    }
    
    func testInputAccessoryView() {
        let inputAccessoryView = UIView()
        
        let style = TextFieldStyle.inputAccessoryView(inputAccessoryView)
         
        
        textField.setStyle(style)
        
        XCTAssertEqual(textField.inputAccessoryView, inputAccessoryView)
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKeyDictionary(_ input: [NSAttributedString.Key: Any]) -> [String: Any] {
	return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
}
