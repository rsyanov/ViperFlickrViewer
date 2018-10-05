//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 22.09.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import UIKit

class LaunchConfigurator {

  func configureModule<UIViewController>(viewInput: UIViewController) {
    if let viewController = viewInput as? LaunchViewController {
      configure(viewController: viewController)
    }
  }

  private func configure(viewController: LaunchViewController) {
    let router = LaunchRouter()
    let presenter = LaunchPresenter()
    let interactor = LaunchInteractor()

    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    interactor.output = presenter
    viewController.output = presenter
    router.transitionHandler = viewController
  }

}
