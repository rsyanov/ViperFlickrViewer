//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 06.10.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import UIKit

final class ApplicationRouterDefault {

  private let window: UIWindow!
  private let storyboard: UIStoryboard!

  init(window: UIWindow, storyboard: UIStoryboard) {
    self.window = window
    self.storyboard = storyboard
  }
}

extension ApplicationRouterDefault: ApplicationRouter {

  func openLaunchScreen() {
    window.rootViewController = storyboard.instantiateInitialViewController()
  }
}
