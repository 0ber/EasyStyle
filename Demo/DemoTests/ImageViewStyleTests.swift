import XCTest
@testable import Demo

class ImageViewStyleTests: XCTestCase {
    
    var imageView: UIImageView!
    override func setUp() {
        super.setUp()
        imageView =  UIImageView()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCreateImageViewStyle() {
        
        let style = ImageViewStyle.backgroundColor(.red)

        XCTAssertNotNil(style.style)
    }
    
    func testImage() {
        let image = UIImage()
        
        let style = ImageViewStyle.image(image)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.image, image)
    }
    
    func testHighlightedImage() {
        let highlightedImage = UIImage()
        
        let style = ImageViewStyle.highlightedImage(highlightedImage)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.highlightedImage, highlightedImage)
    }
    
    func testAnimationImages() {
        let animationImages = [UIImage()]
        
        let style = ImageViewStyle.animationImages(animationImages)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.animationImages, animationImages)
    }
    
    func testHighlightedAnimationImages() {
        let highlightedAnimationImages = [UIImage()]
        
        let style = ImageViewStyle.highlightedAnimationImages(highlightedAnimationImages)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.highlightedAnimationImages, highlightedAnimationImages)
    }
    
    func testAnimationDuration() {
        let animationDuration: TimeInterval = 3.33
        
        let style = ImageViewStyle.animationDuration(animationDuration)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.animationDuration, animationDuration)
    }
    
    func testAnimationRepeatCount() {
        let animationRepeatCount = 8
        
        let style = ImageViewStyle.animationRepeatCount(animationRepeatCount)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.animationRepeatCount, animationRepeatCount)
    }
    
    func testIsUserInteractionEnabled() {
        let isUserInteractionEnabled = true
        
        let style = ImageViewStyle.isUserInteractionEnabled(isUserInteractionEnabled)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.isUserInteractionEnabled, isUserInteractionEnabled)
    }
    
    func testIsHighlighted() {
        let isHighlighted = true
        
        let style = ImageViewStyle.isHighlighted(isHighlighted)

        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.isHighlighted, isHighlighted)
    }
    
    func testTintColor() {
        let tintColor = UIColor.red
        
        let style = ImageViewStyle.tintColor(tintColor)

        
        imageView.setStyle(style)
        
        XCTAssertEqual(imageView.tintColor, tintColor)
    }
    
    
}
