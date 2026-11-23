
import XCTest

final class CounterAppUITests: XCTestCase {

    func testCounterButtons() throws {
        let app = XCUIApplication()
        app.launch()

        let counter = app.staticTexts["counterValue"]
        let increase = app.buttons["incrementButton"]
        let decrease = app.buttons["decrementButton"]
        let reset = app.buttons["resetButton"]

        XCTAssertEqual(counter.label, "0")

        increase.tap()
        XCTAssertEqual(counter.label, "1")

        decrease.tap()
        XCTAssertEqual(counter.label, "0")

        increase.tap()
        increase.tap()

        XCTAssertEqual(counter.label, "2")

        reset.tap()
        XCTAssertEqual(counter.label, "0")
    }
}
