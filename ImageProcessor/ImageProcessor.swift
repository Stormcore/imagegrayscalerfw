//
//  ImageProcessor.swift
//  ImageProcessor
//
//  Created by Dzmitry Sukhau on 5/3/16.
//  Copyright © 2016 Dzmitry Sukhau. All rights reserved.
//

import Foundation

public class ImageProcessor {
  
  public class func convertToGrayScale(image: UIImage) -> UIImage {
    let imageRect:CGRect = CGRectMake(0, 0, image.size.width, image.size.height)
    let colorSpace = CGColorSpaceCreateDeviceGray()
    let width = image.size.width
    let height = image.size.height
    
    let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.None.rawValue)
    let context = CGBitmapContextCreate(nil, Int(width), Int(height), 8, 0, colorSpace, bitmapInfo.rawValue)
    
    CGContextDrawImage(context, imageRect, image.CGImage)
    let imageRef = CGBitmapContextCreateImage(context)
    let newImage = UIImage(CGImage: imageRef!)
    
    return newImage
  }
  
}