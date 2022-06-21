//
//  FeedCellConfiguratorVisitor.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import Foundation
import UIKit

struct FeedCellConfiguratorVisitor: FeedVisitor {
    
    private let cell: UITableViewCell
    
    init(cell: UITableViewCell) {
        self.cell = cell
    }
    
    func visit(_ viewObject: MediaFeedViewObject) -> Any? {
        guard let cell = cell as? MediaFeedTableViewCell else { return nil }
        
        return nil
    }
    
    func visit(_ viewObject: MemoriesFeedViewObject) -> Any? {
        guard let cell = cell as? MediaFeedTableViewCell else { return nil }
        
        return nil
    }
    
    func visit(_ viewObject: PlainTextFeedViewObject) -> Any? {
        guard let cell = cell as? MediaFeedTableViewCell else { return nil }
        
        return nil
    }
}

