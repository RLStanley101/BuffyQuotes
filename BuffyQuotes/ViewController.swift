//
//  ViewController.swift
//  BuffyQuotes
//
//  Created by Ronnie Stanley on 10/5/16.
//  Copyright © 2016 Ronnie Stanley. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var buffyQuote: UILabel!
    @IBOutlet weak var inSeasonLabel: UILabel!
    @IBOutlet weak var inSeasonResult: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var episodeResult: UILabel!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.purple
        let currentQuote = getRandomQuote()
        buffyQuote.text = currentQuote.quote
        inSeasonResult.text = currentQuote.season
        episodeResult.text = currentQuote.episode
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showAnotherQuote() {
        let newQuote = getRandomQuote()
        buffyQuote.text = newQuote.quote
        inSeasonResult.text = newQuote.season
        episodeResult.text = newQuote.episode
        
        if newQuote.season == "1" {
            view.backgroundColor = UIColor(displayP3Red: 138.0/255, green: 43.0/255, blue: 226.0/255, alpha: 1.0)
        } else if newQuote.season == "2" {
            view.backgroundColor = UIColor(displayP3Red: 139.0/255, green: 0.0/255, blue: 139.0/255, alpha: 1.0)
        } else if newQuote.season == "3" {
            view.backgroundColor = UIColor(displayP3Red: 75.0/255, green: 0.0/255, blue: 130.0/255, alpha: 1.0)
        } else if newQuote.season == "4" {
            view.backgroundColor = UIColor(displayP3Red: 106.0/255, green: 90.0/255, blue: 205.0/255, alpha: 1.0)
        } else if newQuote.season == "5" {
            view.backgroundColor = UIColor(displayP3Red: 25.0/255, green: 25.0/255, blue: 112.0/255, alpha: 1.0)
        } else if newQuote.season == "6" {
            view.backgroundColor = UIColor(displayP3Red: 123.0/255, green: 104.0/255, blue: 238.0/255, alpha: 1.0)
        } else {
            view.backgroundColor = UIColor.gray
        }
        
    }
    
}

