//
//  PagerViewLayoutAttributes.swift
//  DokiDokiLive
//
//  Created by zhangbangjun on 2019/1/10.
//  Copyright © 2019 Pusic. All rights reserved.
//

import Foundation
import UIKit

open class PagerViewLayoutAttributes: UICollectionViewLayoutAttributes {
    
    open var position: CGFloat = 0
    
    open override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? PagerViewLayoutAttributes else {
            return false
        }
        var isEqual = super.isEqual(object)
        isEqual = isEqual && (self.position == object.position)
        return isEqual
    }
    
    open override func copy(with zone: NSZone? = nil) -> Any {
        let copy = super.copy(with: zone) as! PagerViewLayoutAttributes
        copy.position = self.position
        return copy
    }
    
}
