import XCTest
@testable import SPMSettingsTester
@testable import SPMSettingsTesterObjC
@testable import SPMSettingsTesterObjCBlank

final class SPMSettingsTesterTests: XCTestCase {
    func testSwiftSqliteHasCodecWasSet() {
        XCTAssertEqual(SPMSettingsTester.sqliteHasCodec(), true)
    }

    func testObjCSqliteHasCodecWasSet() {
        XCTAssertEqual(TesterObj.sqliteHasCodec(), true)
    }

    func testSwiftSqliteHasCodecWasNotSet() {
        XCTAssertEqual(TesterUndefObj.sqliteHasCodec(), false)
    }

    static var allTests = [
        ("testSwiftSqliteHasCodecWasSet", testSwiftSqliteHasCodecWasSet),
        ("testObjCSqliteHasCodecWasSet", testObjCSqliteHasCodecWasSet),
        ("testSwiftSqliteHasCodecWasNotSet", testSwiftSqliteHasCodecWasNotSet),
    ]
}
