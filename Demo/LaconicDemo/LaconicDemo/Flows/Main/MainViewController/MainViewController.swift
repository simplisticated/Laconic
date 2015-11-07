//
//  MainViewController.swift
//  LaconicDemo
//
//  Created by Igor Matyushkin on 06.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Variables & properties
    
    private var labelNumbers: UILabel!
    
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize navigation bar
        
        navigationItem.title = "Laconic"
        
        
        // Initialize numbers label
        
        labelNumbers = UILabel()
        labelNumbers --> view.bounds --> view
        
        labelNumbers.numberOfLines = 0
        labelNumbers.textAlignment = .Center
        
        let collectionOfExampleExpressions = exampleExpressions()
        let textForLabelNumbers = collectionOfExampleExpressions.joinWithSeparator("\n\n")
        labelNumbers.text = textForLabelNumbers
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
        // Update numbers label
        
        labelNumbers --> view.bounds
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Private methods
    
    private func exampleExpressions() -> [String] {
        // Obtain expression 1
        
        let leftPartForExpression1 = "√4"
        let resultForExpression1 = √4
        let expression1 = String(format: "%@ = %.2f", arguments: [leftPartForExpression1, resultForExpression1])
        
        
        // Obtain expression 2
        
        let leftPartForExpression2 = "√√√√65536"
        let resultForExpression2 = √√√√65536
        let expression2 = String(format: "%@ = %.2f", arguments: [leftPartForExpression2, resultForExpression2])
        
        
        // Obtain expression 3
        
        let leftPartForExpression3 = "∑ {10, 128, 712}"
        let resultForExpression3 = ∑[10, 128, 712]
        let expression3 = String(format: "%@ = %d", arguments: [leftPartForExpression3, resultForExpression3])
        
        
        // Obtain array containing example expressions
        
        let allExpressions = [
            expression1,
            expression2,
            expression3
        ]
        
        
        // Return result
        
        return allExpressions
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
