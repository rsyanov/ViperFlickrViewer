//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 05.10.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import Swinject
import UIKit

final class ApplicationAssembly: Assembly {

  static let assembler = Assembler([
    ApplicationAssembly(),
    StoryboardAssembly()])

  private init() {}

  func assemble(container: Container) {
    container.register(ApplicationAssembly.self) { _ in
      return ApplicationAssembly()
    }.inObjectScope(.container)

    container.register(UIWindow.self) { _ in
      return UIApplication.shared.delegate!.window!!
    }.inObjectScope(.container)

    container.register(Bundle.self) { _ in
      return Bundle.main
    }.inObjectScope(.container)

    container.register(ApplicationRouter.self) { resolver in
      let window = resolver.resolve(UIWindow.self)!
      let storyboard = resolver.resolve(UIStoryboard.self)!
      return ApplicationRouterDefault(window: window, storyboard: storyboard)
    }.inObjectScope(.container)
  }
  
  
}
