//
//  PhotoViewController.swift
//  lab-task-squirrel
//
//  Created by Syed Taha Shah on 8/31/25.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var photoView: UIImageView!
    
    var task: Task!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoView.image = task.image
    }
}
