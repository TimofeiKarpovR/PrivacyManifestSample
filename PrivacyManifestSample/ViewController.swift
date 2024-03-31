//
//  ViewController.swift
//  PrivacyManifestSample
//
//  Created by Timofei Karpov on 30/03/2024.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let lastLaunchDate = UserDefaults.standard.value(forKey: "lastLaunchDate") as? Date
        UserDefaults.standard.setValue(Date(), forKey: "lastLaunchDate")

        let dateLabel = UILabel(frame: .init(x: 16, y: 100, width: view.bounds.width, height: 30))
        dateLabel.text = "Last launch date: " + (lastLaunchDate?.ISO8601Format() ?? "none")
        view.addSubview(dateLabel)

        let appleImageView = UIImageView(frame: .init(x: 16, y: 150, width: 100, height: 100))
        let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/1/15/Red_Apple.jpg")!
        appleImageView.sd_setImage(with: imageURL)
        view.addSubview(appleImageView)
    }
}

