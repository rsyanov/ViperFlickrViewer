//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 22.09.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import Foundation

final class LaunchInteractor {
  weak var output: LaunchInteractorOutput?
}

extension LaunchInteractor: LaunchInteractorInput {}
