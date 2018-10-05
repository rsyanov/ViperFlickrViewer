//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 06.10.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import Swinject
import UIKit

final class StoryboardAssembly: Assembly {
  func assemble(container: Container) {
    container.register(UIStoryboard.self) { resolver in
      return UIStoryboard(name: "Main", bundle: resolver.resolve(Bundle.self))
    }.inObjectScope(.weak)
  }
}
