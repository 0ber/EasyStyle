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
        let imageViewStyle = ImageViewStyle(style: style)
        
        XCTAssertNotNil(imageViewStyle.style)
    }
    
    func testImage() {
        let image = UIImage()
        
        let style = ImageViewStyle.image(image)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.image, image)
    }
    
    func testHighlightedImage() {
        let highlightedImage = UIImage()
        
        let style = ImageViewStyle.highlightedImage(highlightedImage)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.highlightedImage, highlightedImage)
    }
    
    func testAnimationImages() {
        let animationImages = [UIImage()]
        
        let style = ImageViewStyle.animationImages(animationImages)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.animationImages, animationImages)
    }
    
    func testHighlightedAnimationImages() {
        let highlightedAnimationImages = [UIImage()]
        
        let style = ImageViewStyle.highlightedAnimationImages(highlightedAnimationImages)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.highlightedAnimationImages, highlightedAnimationImages)
    }
    
    func testAnimationDuration() {
        let animationDuration: TimeInterval = 3.33
        
        let style = ImageViewStyle.animationDuration(animationDuration)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.animationDuration, animationDuration)
    }
    
    func testAnimationRepeatCount() {
        let animationRepeatCount = 8
        
        let style = ImageViewStyle.animationRepeatCount(animationRepeatCount)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.animationRepeatCount, animationRepeatCount)
    }
    
    func testIsUserInteractionEnabled() {
        let isUserInteractionEnabled = true
        
        let style = ImageViewStyle.isUserInteractionEnabled(isUserInteractionEnabled)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.isUserInteractionEnabled, isUserInteractionEnabled)
    }
    
    func testTintColor() {
        let tintColor = UIColor.red
        
        let style = ImageViewStyle.tintColor(tintColor)
        let imageViewStyle = ImageViewStyle(style: style)
        
        imageView.setStyle(imageViewStyle)
        
        XCTAssertEqual(imageView.tintColor, tintColor)
    }
    
    
}
