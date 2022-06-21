//
//  MediaFeedViewObject.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import Foundation

struct MediaFeedViewObject: FeedViewObject {
    func accept<V>(visitor: V) -> V.T? where V : FeedVisitor {
        return visitor.visit(self)
    }
}
