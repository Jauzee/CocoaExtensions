//
//  ASControl+Rx.swift
//  CocoaExtensions-iOS
//
//  Created by Abdurahim Jauzee on 01/06/2018.
//

#if os(iOS) || os(tvOS)

import UIKit
import AsyncDisplayKit
import RxSwift
import RxCocoa

public extension Reactive where Base: ASControlNode {
  
  /// Bindable sink for `isEnabled` property.
  var isEnabled: Binder<Bool> {
    return Binder(self.base) { control, value in
      control.isEnabled = value
    }
  }
  
  /// Bindable sink for `isSelected` property.
  var isSelected: Binder<Bool> {
    return Binder(self.base) { control, selected in
      control.isSelected = selected
    }
  }
  
}

#endif
