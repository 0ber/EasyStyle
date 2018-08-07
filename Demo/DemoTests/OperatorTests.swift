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
    
    func testOperator_Style_Plus_Style() {
        let redColor = UIColor.red
        let alpha: CGFloat = 0.5

        let redBackgroundSubstyle = ViewStyle.backgroundColor(redColor)
        let alphaStyle = ViewStyle.alpha(alpha)

        let combineStyle = alphaStyle + redBackgroundSubstyle

        view.setStyle(combineStyle)

        XCTAssertEqual(view.backgroundColor, redColor)
        XCTAssertEqual(view.alpha, alpha)
    }
}
