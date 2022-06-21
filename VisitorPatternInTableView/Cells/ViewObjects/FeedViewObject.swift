//
//  FeedViewObject.swift
//  VisitorPatternInTableView
//
//  Created by ZhgChgLi on 2022/6/20.
//

import Foundation
import UIKit

protocol FeedViewObject {
    @discardableResult func accept<V: FeedVisitor>(visitor: V) -> V.T?
}
