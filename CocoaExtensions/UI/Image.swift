//
//  Image.swift
//  CocoaExtensions
//
//  Created by Abdurahim Jauzee on 12/11/2017.
//

#if os(OSX)
  import AppKit
  typealias Image = NSImage
#elseif os(iOS) || os(watchOS) || os(tvOS)
  import UIKit
  typealias Image = UIImage
#endif

public extension Image {
  
#if os(OSX)
  
#else
  
  public enum ImageType {
    case jpeg(quality: CGFloat)
    case png
  }
  
  public func data(for type: ImageType) -> Data? {
    switch type {
    case .jpeg(let quality):
      return jpegData(compressionQuality: quality)
    case .png:
      return pngData()
    }
  }
  
  public var template: UIImage {
    return withRenderingMode(.alwaysTemplate)
  }
  
  public var original: UIImage {
    return withRenderingMode(.alwaysOriginal)
  }
  
#endif
  
}

