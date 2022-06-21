//
//  FeedCellVisitor.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import UIKit
import Foundation

struct FeedCellVisitor: FeedVisitor {
    typealias T = UITableViewCell.Type
    
    func visit(_ viewObject: MediaFeedViewObject) -> T? {
        return MediaFeedTableViewCell.self
    }
    
    func visit(_ viewObject: MemoriesFeedViewObject) -> T? {
        return MemoriesFeedTableViewCell.self
    }
    
    func visit(_ viewObject: PlainTextFeedViewObject) -> T? {
        return PlainTextFeedTableViewCell.self
    }
}
