//
//  customButton.swift
//  Xiomara-Figueroa
//
//  Created by Xiomara on 4/25/15.
//  Copyright (c) 2015 UPRRP. All rights reserved.
//

import Foundation

extension UIImage {
    
    class func templateImage() -> UIImage {
        let size = CGSizeMake(1.0, 1.0)
        
        UIGraphicsBeginImageContextWithOptions(size, true, 0)
        
        UIColor.blackColor().setFill()
        UIRectFill(CGRectMake(0.0, 0.0, size.width, size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image.imageWithRenderingMode(.AlwaysTemplate)
    }
    
    class func backgroundTemplateImage() -> UIImage {
        let image = UIImage.templateImage()
        let resizableImage = image.resizableImageWithCapInsets(UIEdgeInsetsZero, resizingMode: .Tile)
        return resizableImage.imageWithRenderingMode(.AlwaysTemplate)
    }
    
    func tintedImageWithColor(color: UIColor, blendingMode: CGBlendMode) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.size, false, 0.0)
        
        color.setFill()
        let bounds = CGRectMake(0.0, 0.0, self.size.width, self.size.height)
        UIRectFill(bounds)
        self.drawInRect(bounds, blendMode: blendingMode, alpha: 1.0)
        
        if blendingMode.value != kCGBlendModeDestinationIn.value {
            self.drawInRect(bounds, blendMode: kCGBlendModeDestinationIn, alpha: 1.0)
        }
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image
    }
    
    class func tintedImageWithName(name: String, color: UIColor) -> UIImage {
        let image = UIImage(named: name)
        return image!.tintedImageWithColor(color)
    }
    
    func tintedImageWithColor(color: UIColor) -> UIImage {
        return self.tintedImageWithColor(color, blendingMode: kCGBlendModeDestinationIn)
    }
    
    class func backgroundTintedImageWithColor(color: UIColor) -> UIImage {
        return UIImage.backgroundTemplateImage().tintedImageWithColor(color)
    }
    
}
