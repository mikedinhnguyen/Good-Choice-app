//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    
    let stories = [
    Story( // 0
        title: "You are a coder and a gamer. You've been stuck inside due to the overwhelming disaster of the pandemic. You wake up early in the morning and contemplate the butterfly effect... Anyway what should you do today?",
        choice1: "Stay at home.", choice1Destination: 2,
        choice2: "Go outside.", choice2Destination: 1
    ),
    Story( // 1
        title: "You decide enough is enough. You need to go outside into the real world. Interact with people! At a safe distance of course. Your stomach growls in anticipation. Do you get food?",
        choice1: "Yeah! Let's get some In N Out!", choice1Destination: 5,
        choice2: "No! Let's take a walk already!", choice2Destination: 6
    ),
    Story( // 2
        title: "Going outside is overrated. You stay inside like the hermit introvert you are. Should you do try and get some coding done or go back to sleep for another?",
        choice1: "Let's code!", choice1Destination: 3,
        choice2: "Let's sleep!", choice2Destination: 4
    ),
    Story( // 3
        title: "You boot up your computer and your terminal pops up with a strange message. It reads: 'We are looking for talented programmers like you. Accept our challenge?' What do you do?",
        choice1: "Accept the challenge.", choice1Destination: 7,
        choice2: "Deny the call to action.", choice2Destination: 8
    ),
    Story( // 4
        title: "It's too early to do anything, you think to yourself. You lie back in the comfortable embrace of your soft linen sheets. This IS the life. As you find yourself falling back into a dreamlike state, you can't help but think to yourself, that you made a good choice.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story( // 5
        title: "You go through the drive thru and order your food. Ahh. The smell of Double-Double cheeseburger and  delicious animal fries! I think that's enough outside world for the day. You come back home to chow down and have yourself a food coma. Overall, I think that was a pretty good choice for the day.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story( // 6
        title: "You grab your mask and go for a walk. The smell of flowers feel nostalgic to you like there was a time before  the pandemic. You see someone walk their dog and you feel instant happiness. This prompts you to go to your nearest shelter and adopt a new quarantine friend. What a day to make a really good choice.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story( // 7
        title: "You're greeted with an algorithmic puzzle on the terminal. If you answer this correctly, something good could happen! You're given a large array of numbers that need sorting. Seems like you need to use a specific algorithm. What do you implement?",
        choice1: "Implement Quick Sort", choice1Destination: 9,
        choice2: "Implement Merge Sort", choice2Destination: 10
    ),
    Story( // 8
        title: "Wow. You really are a hermit huh? You didn't even want to try to get out of your comfort zone? Well, I guess that's your choice. Up to you if you decide that's good or not.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story( // 9
        title: "Oof! Quick sort is pretty much inefficient with large arrays. You failed the challenge! That wasn't a good choice.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story( // 10
        title: "You did it! You implemented the right algorithm! Seems like the reward for finishing the challenge correctly was a secret recruiting form for Google! Looks like you made the right choice.",
        choice1: "The", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    )
    ]
    
    mutating func nextStory(_ userChoice: String) {
        if userChoice == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
        }
        if userChoice == stories[storyNumber].choice2 {
            storyNumber = stories[storyNumber].choice2Destination
        }
    }
    
    func getStoryLabel() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
}
