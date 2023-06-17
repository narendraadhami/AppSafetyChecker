import XCTest
@testable import AppSafetyChecker

final class AppSafetyCheckerTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertFalse(AppSafetyChecker().isDeviceJailBreak(), "Device is jailbreak")
        
        XCTAssertFalse(AppSafetyChecker().isRunningOnSimulator(), "Running on simulator")
    }
}
