//
//  QuotesBrain.swift
//  BuffyQuotes
//
//  Created by Ronnie Stanley on 10/5/16.
//  Copyright © 2016 Ronnie Stanley. All rights reserved.
//

import Foundation
import GameKit

struct Quote {
    let quote: String
    let season: String
    let episode: String
}



let firstQuote = Quote(quote: "I'm sixteen years old. I don't wanna die.", season: "1", episode: "13")
let secondQuote = Quote(quote: "The whole earth may be sucked into hell, and you want my help 'cause your girlfriend's a big 'ho? Well, let me take this opportunity to not care.", season: "2", episode: "21")
let thirdQuote = Quote(quote: "The Council is not welcome here. I have no time for orders. If I need someone to scream like a woman I'll give you a call.", season: "3", episode: "22")
let fourthQuote = Quote(quote: "I'll end up an old lady who can only live with cats", season: "4", episode: "2")
let fifthQuote = Quote(quote: "You want credit for not feeding on bleeding disaster victims?", season: "5", episode: "11")
let sixthQuote = Quote(quote: "I'm pretty spry for a corpse.", season: "6", episode: "7")
let seventhQuote = Quote(quote: "In every generation, one slayer is born...because a bunch of men who died thousands of years ago made up that rule. They were powerful men. This woman is more powerful than all of them combined", season: "7", episode: "22")

var quoteArray = [firstQuote, secondQuote, thirdQuote, fourthQuote, fifthQuote, sixthQuote, seventhQuote]

func getRandomQuote() -> Quote {
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: quoteArray.count)
    return quoteArray[randomNumber]
    
}


