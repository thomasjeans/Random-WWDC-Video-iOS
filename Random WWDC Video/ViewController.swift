//
//  ViewController.swift
//  Random WWDC Video
//
//  Created by Thomas Jeans on 4/6/16.
//  Copyright © 2016 Thomas Jeans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let videoArray = ["217",
        "226",
        "233",
        "224",
        "204",
        "222",
        "213",
        "234",
        "231",
        "209",
        "205",
        "221",
        "214",
        "504",
        "223",
        "216",
        "211",
        "218",
        "219",
        "222",
        "212",
        "230",
        "509",
        "207",
        "208",
        "228",
        "202",
        "220",
        "203",
        "210",
        "227",
        "206",
        "225",
        "215",
        "229",
        "201",
        "805",
        "802",
        "801",
        "803",
        "413",
        "404",
        "405",
        "414",
        "410",
        "407",
        "403",
        "409",
        "412",
        "408",
        "401",
        "411",
        "406",
        "402",
        "303",
        "306",
        "301",
        "302",
        "304",
        "103",
        "108",
        "105",
        "101",
        "102",
        "112",
        "107",
        "106",
        "104",
        "609",
        "606",
        "605",
        "608",
        "602",
        "610",
        "603",
        "607",
        "604",
        "508",
        "502",
        "506",
        "503",
        "511",
        "505",
        "507",
        "510",
        "501",
        "707",
        "702",
        "718",
        "710",
        "715",
        "708",
        "709",
        "713",
        "712",
        "711",
        "703",
        "706",
        "701",
        "704",
        "714",
        "705",
        "717",
        "720",
        "719"
    ]
    
    var randomURLString: String {
        get {
            let randomVideoIndex = Int(arc4random()) % videoArray.count
            let randomVideo = videoArray[randomVideoIndex]
            return "https://developer.apple.com/videos/play/wwdc2015-\(randomVideo)/"
        }
    }
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonTouched(sender: UIButton) {
        sender.setBackgroundImage(UIImage(named: "rwv-button-refresh"), forState: .Normal)
        webView.loadRequest(NSURLRequest(URL: NSURL(string: randomURLString)!))
    }
}

