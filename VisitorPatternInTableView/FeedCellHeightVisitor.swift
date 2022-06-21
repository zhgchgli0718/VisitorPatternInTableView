//
//  FeedCellHeightVisitor.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import UIKit
import Foundation

struct FeedCellHeightVisitor: FeedVisitor {
    typealias T = CGFloat
    
    func visit(_ viewObject: MediaFeedViewObject) -> T? {
        return 30
    }
    
    func visit(_ viewObject: MemoriesFeedViewObject) -> T? {
        return 10
    }
    
    func visit(_ viewObject: PlainTextFeedViewObject) -> T? {
        return 10
    }
}
