//
//  UIView.swift
//  HandyExtensions
//
//  Created by Abdurahim Jauzee on 12/11/2017.
//

#if os(OSX)
  // Skip macOS
#else

import UIKit

public extension UIView {
  
  public static func loadFromNib<T: UIView>(_: T.Type, owner: Any? = nil) -> T {
    return Bundle.main.loadNibNamed(String(describing: T.self), owner: owner, options: nil)!.first as! T
  }
  
  public func transition(_ duration: Double, animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil) {
    UIView.transition(with: self, duration: duration, options: UIViewAnimationOptions.transitionCrossDissolve, animations: animations, completion: completion)
  }
  
  /*
   Round UIView's corners with CAShapeLayer mask.
   
   This way you can achieve better performance than using `.cornerRadius` property on UIView's layer.
   */
  public func roundCornersWithMask(radius: CGFloat) {
    let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    layer.mask = mask
  }
  
}

#endif
