import XCTest
@testable import ExitButton

final class ExitButtonTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ExitButton().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
