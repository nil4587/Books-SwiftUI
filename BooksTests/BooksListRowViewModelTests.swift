//
//  BooksListRowViewModelTests.swift
//  BooksTests
//
//  Created by Nilesh Prajapati on 2023/09/07.
//

import XCTest

final class BooksListRowViewModelTests: XCTestCase {

    private var viewModel: BooksListRowViewModel?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = BooksListRowViewModel(book: BookViewModel(book: mockData.first!))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil
    }
    
    func testMoviePropertiesAvailability() {
        XCTAssertNotNil(viewModel?.title)
        XCTAssertNotNil(viewModel?.image)
        XCTAssertNotNil(viewModel?.rank)
        XCTAssertNotNil(viewModel?.description)
        XCTAssertNotNil(viewModel?.author)
        XCTAssertNotNil(viewModel?.contributor)
        XCTAssertNotNil(viewModel?.createdDate)
    }
    
    func testMoviePropertiesNotEmpty() {
        XCTAssertEqual(viewModel?.title.isEmpty, false)
        XCTAssertEqual(viewModel?.author.isEmpty, false)
        XCTAssertEqual(viewModel?.contributor.isEmpty, false)
        XCTAssertEqual(viewModel?.description.isEmpty, false)
    }
}
