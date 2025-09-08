//
// Modified
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//  Modified by Syed Shah on 9/7/25

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your Local Favorite Restaurant",
                 description: "Where do you go for some good eats?"),
            Task(title: "Your Favorite Local Cafe",
                 description: "Where do you go to get energized for the day?"),
            Task(title: "Your Favorite Beach",
                 description: "What beach do you go to wind down and connect with the nature?"),
            Task(title: "Your go-to Brunch Spot",
                 description: "Your friends are in town, where are you taking them to eat?")
        ]
    }
}
