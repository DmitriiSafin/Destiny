//
//  ViewController.swift
//  Destiny
//
//  Created by Дмитрий on 02.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    let story = StoryBrain().story
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        guard let userChoice = sender.currentTitle else { return }
        storyBrain.nextStory(userChoice)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = story[storyBrain.numberStory].title
        choice1Button.setTitle(story[storyBrain.numberStory].choice1, for: .normal)
        choice2Button.setTitle(story[storyBrain.numberStory].choice2, for: .normal)
    }
    

}

