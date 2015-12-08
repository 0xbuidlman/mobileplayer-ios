//
//  RemoteConfigExampleViewController.swift
//  MobilePlayer
//
//  Created by Baris Sencan on 23/11/2015.
//  Copyright © 2015 MovieLaLa. All rights reserved.
//

import UIKit
import MobilePlayer

class RemoteConfigExampleViewController: ExampleViewController {

  init() {
    super.init(nibName: nil, bundle: nil)
    title = "Remote Configuration"
    codeImageView.image = UIImage(named: "RemoteConfigExampleCode")
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func showButtonDidGetTapped() {
    guard let configURL = NSURL(string: "https://goo.gl/c73ANK") else { return }
    let playerVC = MobilePlayerViewController(
      contentURL: videoURL,
      config: MobilePlayerConfig(fileURL: configURL))
    playerVC.title = "Remote Player - \(videoTitle)"
    playerVC.activityItems = [videoURL]
    presentMoviePlayerViewControllerAnimated(playerVC)
  }
}
