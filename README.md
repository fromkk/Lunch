# Lunch

Lunch is helper of UI Test with Swift.

## Requirements

- Swift 3.0 or later
- iOS 9 or later

## Installation

### Carthage

- Insert `github "fromkk/Lunch"` to your `Cartfile` .
- Run `carthage update`
- Link your app with `Lunch.framework` in `Carthage/Build`
- Link your UI test target with `LunchTest.framework` in `Carthage/Build`

## Usage

In App target adopt protocol `Cookable`.

```swift
import Lunch

struct Chef: Cookable {
    func cook<T>(_ identifier: String, userInfo: [AnyHashable : Any]?) -> T? {
        switch identifier {
        case "ViewController":
            return self.viewController() as? T
        default:
            return nil
        }
    }
}

extension Chef {
    func viewController() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateInitialViewController() as! ViewController
    }
}

```

```swift
// AppDelegate.swift
import Lunch

let chef = Chef()
let rootViewController: UIViewController
#if DEBUG
if let viewController: UIViewController = Launcher(with: chef).launch() {
    rootViewController = viewController
} else {
    rootViewController = chef.viewController()
}
#else
rootViewController = chef.viewController()
#endif
window?.rootViewController = rootViewController
```

In UI Test target.

1 Add component and adopt protocol `Componentable`.

```swift
import XCTest
import LunchTest

struct LunchViewControllerComponents: Componentable {
    var app: XCUIApplication
    init(app: XCUIApplication) {
        self.app = app
    }

    var lunchLabel: XCUIElement {
        return self.app.staticTexts["lunchLabel"]
    }
}
```

2 Add your tests and adopt protocol `ViewControllerTestable`

```swift
import XCTest
import LunchTest

class LunchViewControllerTests: XCTestCase, ViewControllerTestable {

    var viewControllerName: String {
        return "LunchViewController"
    }

    override func setUp() {
        super.setUp()

        continueAfterFailure = false
    }

    func testLunchLabel() {
        let launcher = Launcher(targetViewController: self)
        let app = launcher.launch()

        let components = LunchViewControllerComponents(app: app)
        XCTAssertTrue(components.lunchLabel.exists)
        XCTAssertEqual(components.lunchLabel.label, "Lunch")
    }
}
```
