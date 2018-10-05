//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 22.09.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    let resolver = ApplicationAssembly.assembler.resolver
    let applicationRouter = resolver.resolve(ApplicationRouter.self)
    applicationRouter?.openLaunchScreen()
    return true
  }
}

