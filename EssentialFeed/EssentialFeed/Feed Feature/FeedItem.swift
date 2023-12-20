//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Carlos Kimura on 19/12/23.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
