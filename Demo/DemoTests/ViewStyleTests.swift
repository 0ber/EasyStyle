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
        XCTAssertNotNil(style.style)
    }
    
    func testBackgroundColor() {
        let color = UIColor.red
        
        let style = ViewStyle.backgroundColor(color)

        view.setStyle(style)
        
        XCTAssertEqual(view.backgroundColor, color)
    }
    
    func testAlpha() {
        let alpha: CGFloat = 0.5
        
        let style = ViewStyle.alpha(alpha)
        view.setStyle(style)
        
        XCTAssertEqual(view.alpha, alpha)
    }
    
    func testTintColor() {
        let color = UIColor.red
        
        let style = ViewStyle.tintColor(color)

        view.setStyle(style)
        
        XCTAssertEqual(view.tintColor, color)
    }
    
    func testtintAdjustmentMode() {
        let tintAdjustmentMode = UIView.TintAdjustmentMode.dimmed
        
        let style = ViewStyle.tintAdjustmentMode(tintAdjustmentMode)

        view.setStyle(style)
        
        XCTAssertEqual(view.tintAdjustmentMode, tintAdjustmentMode)
    }
    
    func testHidden() {
        let isHidden = true
        
        let style = ViewStyle.isHidden(isHidden)

        view.setStyle(style)
        
        XCTAssertEqual(view.isHidden, isHidden)
    }
    
    func testisOpaque() {
        let isOpaque = false
        
        let style = ViewStyle.isOpaque(isOpaque)

        view.setStyle(style)
        
        XCTAssertEqual(view.isOpaque, isOpaque)
    }
    
    func testClipsToBounds() {
        let clipsToBounds = true
        
        let style = ViewStyle.clipsToBounds(clipsToBounds)

        view.setStyle(style)
        
        XCTAssertEqual(view.clipsToBounds, clipsToBounds)
    }
    
    func testClearsContextBeforeDrawing() {
        let clearsContextBeforeDrawing = false
        
        let style = ViewStyle.clearsContextBeforeDrawing(clearsContextBeforeDrawing)

        view.setStyle(style)
        
        XCTAssertEqual(view.clearsContextBeforeDrawing, clearsContextBeforeDrawing)
    }
    
    func testIsUserInteractionEnabled() {
        let isUserInteractionEnabled = false
        
        let style = ViewStyle.isUserInteractionEnabled(isUserInteractionEnabled)

        view.setStyle(style)
        
        XCTAssertEqual(view.isUserInteractionEnabled, isUserInteractionEnabled)
    }
    
    func testIsMultipleTouchEnabled() {
        let isMultipleTouchEnabled = true
        
        let style = ViewStyle.isMultipleTouchEnabled(isMultipleTouchEnabled)

        view.setStyle(style)
        
        XCTAssertEqual(view.isMultipleTouchEnabled, isMultipleTouchEnabled)
    }
    
    func testIsExclusiveTouch() {
        let isExclusiveTouch = true
        
        let style = ViewStyle.isExclusiveTouch(isExclusiveTouch)

        view.setStyle(style)
        
        XCTAssertEqual(view.isExclusiveTouch, isExclusiveTouch)
    }
    
    func testMasksToBounds() {
        let masksToBounds = true
        
        let style = ViewStyle.masksToBounds(masksToBounds)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.masksToBounds, masksToBounds)
    }
    
    func testCornerRadius() {
        let cornerRadius: CGFloat = 0.5
        
        let style = ViewStyle.cornerRadius(cornerRadius)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.cornerRadius, cornerRadius)
    }
    
//    func testMaskedCorners() {
//        let maskedCorners = CACornerMask.layerMaxXMinYCorner
//        
//        let style = ViewStyle.maskedCorners(maskedCorners)
//
//        view.setStyle(style)
//        
//        XCTAssertEqual(view.layer.maskedCorners, maskedCorners)
//    }
    
    func testBorderWidth() {
        let borderWidth: CGFloat = 4
        
        let style = ViewStyle.borderWidth(borderWidth)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.borderWidth, borderWidth)
    }
    
    func testBorderColor() {
        let borderColor = UIColor.red
        
        let style = ViewStyle.borderColor(borderColor)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.borderColor, borderColor.cgColor)
    }
    
    func testShadowOpacity() {
        let shadowOpacity: Float = 0.5
        
        let style = ViewStyle.shadowOpacity(shadowOpacity)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.shadowOpacity, shadowOpacity)
    }
    
    func testShadowRadius() {
        let shadowRadius: CGFloat = 4
        
        let style = ViewStyle.shadowRadius(shadowRadius)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.shadowRadius, shadowRadius)
    }
    
    func testLayerShadowOffset() {
        let layerShadowOffset = CGSize(width: 10, height: 5)
        
        let style = ViewStyle.layerShadowOffset(layerShadowOffset)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.shadowOffset, layerShadowOffset)
    }
    
    func testLayerShadowColor() {
        let layerShadowColor = UIColor.red
        
        let style = ViewStyle.layerShadowColor(layerShadowColor)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.shadowColor, layerShadowColor.cgColor)
    }
    
    func testShadowPath() {
        let shadowPath = CGPath(ellipseIn: CGRect(x: 10, y: 20, width: 30, height: 50), transform: nil)
        
        let style = ViewStyle.shadowPath(shadowPath)

        view.setStyle(style)
        
        XCTAssertEqual(view.layer.shadowPath, shadowPath)
    }
}
