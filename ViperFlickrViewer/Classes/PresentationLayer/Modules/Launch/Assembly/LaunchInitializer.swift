//
//  ViperFlickrViewer
//
//  Created by Ruslan Syanov on 22.09.2018.
//  Copyright © 2018 Ruslan Syanov. All rights reserved.
//

import UIKit

class LaunchInitializer: NSObject {
  
  @IBOutlet weak var viewController: LaunchViewController!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    let configurator = LaunchConfigurator()
    configurator.configureModule(viewInput: viewController)
  }
}
