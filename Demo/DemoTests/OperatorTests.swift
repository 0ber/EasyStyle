import XCTest
@testable import Demo

class OperatorTests: XCTestCase {
    
    var view: UIView!
    
    override func setUp() {
        super.setUp()
        view = UIView()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPlusOperator() {
        let redColor = UIColor.red
        let alpha: CGFloat = 0.5
        
        let redBackgroundStyle = ViewStyle.backgroundColor(redColor)
        let alphaStyle = ViewStyle.alpha(alpha)
        
        let combineStyle = redBackgroundStyle + alphaStyle
        let viewStyle = ViewStyle(style: combineStyle)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.backgroundColor, redColor)
        XCTAssertEqual(view.alpha, alpha)
    }
    
    func testPlusOperatorPriority() {
        let redColor = UIColor.red
        let greenColor = UIColor.green

        // set equal styles
        let redBackgroundStyle = ViewStyle.backgroundColor(redColor)
        let greenBackgroundStyle = ViewStyle.backgroundColor(greenColor)

        let combineStyle = redBackgroundStyle + greenBackgroundStyle
        let viewStyle = ViewStyle(style: combineStyle)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.backgroundColor, greenColor)
    }
    
    func testOperator_Style_Plus_Substyle() {
        let redColor = UIColor.red
        let alpha: CGFloat = 0.5
        
        let redBackgroundSubstyle = ViewStyle.backgroundColor(redColor)
        let alphaStyle = ViewStyle(style: ViewStyle.alpha(alpha))
        
        let combineStyle = alphaStyle <<< redBackgroundSubstyle

        view.setStyle(combineStyle)
        
        XCTAssertEqual(view.backgroundColor, redColor)
        XCTAssertEqual(view.alpha, alpha)
    }
}
