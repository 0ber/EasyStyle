import XCTest
@testable import Demo

class ViewStyleTests: XCTestCase {
    
    var view: UIView!
    
    override func setUp() {
        super.setUp()
      view = UIView()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateViewStyle() {
        
        let style = ViewStyle.backgroundColor(.red)
        let viewStyle = ViewStyle(style: style)

        XCTAssertNotNil(viewStyle.style)
    }
    
    func testBackgroundColor() {
        let color = UIColor.red
        
        let style = ViewStyle.backgroundColor(color)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.backgroundColor, color)
    }
    
    func testAlpha() {
        let alpha: CGFloat = 0.5
        
        let style = ViewStyle.alpha(alpha)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.alpha, alpha)
    }
    
    func testTintColor() {
        let color = UIColor.red
        
        let style = ViewStyle.tintColor(color)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.tintColor, color)
    }
    
    func testtintAdjustmentMode() {
        let tintAdjustmentMode = UIViewTintAdjustmentMode.dimmed
        
        let style = ViewStyle.tintAdjustmentMode(tintAdjustmentMode)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.tintAdjustmentMode, tintAdjustmentMode)
    }
    
    func testHidden() {
        let isHidden = true
        
        let style = ViewStyle.isHidden(isHidden)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.isHidden, isHidden)
    }
    
    func testisOpaque() {
        let isOpaque = false
        
        let style = ViewStyle.isOpaque(isOpaque)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.isOpaque, isOpaque)
    }
    
    func testClipsToBounds() {
        let clipsToBounds = true
        
        let style = ViewStyle.clipsToBounds(clipsToBounds)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.clipsToBounds, clipsToBounds)
    }
    
    func testClearsContextBeforeDrawing() {
        let clearsContextBeforeDrawing = false
        
        let style = ViewStyle.clearsContextBeforeDrawing(clearsContextBeforeDrawing)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.clearsContextBeforeDrawing, clearsContextBeforeDrawing)
    }
    
    func testIsUserInteractionEnabled() {
        let isUserInteractionEnabled = false
        
        let style = ViewStyle.isUserInteractionEnabled(isUserInteractionEnabled)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.isUserInteractionEnabled, isUserInteractionEnabled)
    }
    
    func testIsMultipleTouchEnabled() {
        let isMultipleTouchEnabled = true
        
        let style = ViewStyle.isMultipleTouchEnabled(isMultipleTouchEnabled)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.isMultipleTouchEnabled, isMultipleTouchEnabled)
    }
    
    func testIsExclusiveTouch() {
        let isExclusiveTouch = true
        
        let style = ViewStyle.isExclusiveTouch(isExclusiveTouch)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.isExclusiveTouch, isExclusiveTouch)
    }
    
    func testMasksToBounds() {
        let masksToBounds = true
        
        let style = ViewStyle.masksToBounds(masksToBounds)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.masksToBounds, masksToBounds)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 0.5
        
        let style = ViewStyle.cornerRadius(cornerRadius)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.cornerRadius, cornerRadius)
    }
    
    func testMaskedCorners() {
        let maskedCorners = CACornerMask.layerMaxXMinYCorner
        
        let style = ViewStyle.maskedCorners(maskedCorners)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.maskedCorners, maskedCorners)
    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 4
        
        let style = ViewStyle.borderWidth(borderWidth)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.borderWidth, borderWidth)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red
        
        let style = ViewStyle.borderColor(borderColor)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.borderColor, borderColor.cgColor)
    }
    
    func testShadowOpacity() {
        let shadowOpacity: Float = 0.5
        
        let style = ViewStyle.shadowOpacity(shadowOpacity)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.shadowOpacity, shadowOpacity)
    }
    
    func testShadowRadius() {
        let shadowRadius: CGFloat = 4
        
        let style = ViewStyle.shadowRadius(shadowRadius)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.shadowRadius, shadowRadius)
    }
    
    func testLayerShadowOffset() {
        let layerShadowOffset = CGSize(width: 10, height: 5)
        
        let style = ViewStyle.layerShadowOffset(layerShadowOffset)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.shadowOffset, layerShadowOffset)
    }
    
    func testLayerShadowColor() {
        let layerShadowColor = UIColor.red
        
        let style = ViewStyle.layerShadowColor(layerShadowColor)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.shadowColor, layerShadowColor.cgColor)
    }
    
    func testShadowPath() {
        let shadowPath = CGPath(ellipseIn: CGRect(x: 10, y: 20, width: 30, height: 50), transform: nil)
        
        let style = ViewStyle.shadowPath(shadowPath)
        let viewStyle = ViewStyle(style: style)
        
        view.setStyle(viewStyle)
        
        XCTAssertEqual(view.layer.shadowPath, shadowPath)
    }
}
