//
//  MemoriesFeedViewObject.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import Foundation

struct MemoriesFeedViewObject: FeedViewObject {
    func accept<V>(visitor: V) -> V.T? where V : FeedVisitor {
        return visitor.visit(self)
    }
}
