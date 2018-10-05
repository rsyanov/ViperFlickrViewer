//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 22.09.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import Foundation

final class LaunchPresenter {

  weak var view: LaunchViewInput?
  var interactor: LaunchInteractorInput?
  var router: LaunchRouterInput?

}

// MARK: - LaunchViewOutput

extension LaunchPresenter: LaunchViewOutput {}

// MARK: - LaunchModuleInput

extension LaunchPresenter: LaunchModuleInput {}

// MARK: - LaunchInteractorOutput

extension LaunchPresenter: LaunchInteractorOutput {}
