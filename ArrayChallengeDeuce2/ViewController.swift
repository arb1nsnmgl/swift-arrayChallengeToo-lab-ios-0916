//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    // Create your methods here
    func addNameToDeliLine(name: String) -> String {
        
        if name == "Billy Crystal" || name == "Meg Ryan" {
            let firstName = name.componentsSeparatedByString(" ")
            deliLine.insert(name, atIndex: 0)
            return "Welcome \(firstName[0])! You can sit wherever you like."
        } else {
            if deliLine.isEmpty {
                deliLine.append(name)
                return "Welcome \(deliLine[0]), you're first in line!"
            } else {
                deliLine.append(name)
                return "Welcome \(name), you're number \(deliLine.indexOf(name)! + 1) in line."
            }
        }
        
    }
    
    func nowServing() -> String {
        if deliLine.isEmpty {
            return "There is no one to be served."
        } else {
            let x = deliLine.removeAtIndex(0)
            return "Now serving \(x)!"
        }
    }
    
    func deliLineDescription() -> String {
        
        let newDeliLine = deliLine.enumerate().map { (index, name) in return "\(index + 1). \(name)\n" }
        var printLine = "The line is: \n"
        
        if deliLine.isEmpty {
            return "The line is currently empty."
        } else {
            for name in newDeliLine {
                printLine = printLine + name
            }
            //print(printLine)
            return printLine
        }
        
    }
}
