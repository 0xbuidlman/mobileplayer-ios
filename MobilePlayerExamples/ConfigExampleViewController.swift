//
//  ConfigExampleViewController.swift
//  MobilePlayer
//
//  Created by Baris Sencan on 23/11/2015.
//  Copyright © 2015 MovieLaLa. All rights reserved.
//

import UIKit
import MobilePlayer

class ConfigExampleViewController: ExampleViewController {

  init() {
    super.init(nibName: nil, bundle: nil)
    title = "Configuration"
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func showButtonDidGetTapped() {
    let config = MobilePlayerConfig(fileURL: NSBundle.mainBundle().URLForResource("WatermarkedPlayer", withExtension: "json")!)
    let playerVC = MobilePlayerViewController(contentURL: videoURL, config: config)
    playerVC.title = "Watermarked Player - \(videoTitle)"
    playerVC.activityItems = [videoURL]
    presentMoviePlayerViewControllerAnimated(playerVC)
  }
}
