//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Carlos Kimura on 19/12/23.
//

import XCTest

class RemoteFeedLoader { }

class HTTPClient {
    var requestURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        let _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestURL)
    }

}
