//
//  ViewController.swift
//  SimpleSeed
//
//  Created by Eli Spiegel on 5/20/18.
//  Copyright © 2018 Eli Spiegel. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var seedL: NSTextField!
    let ar:[String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","O","P","Q","R","S","T","U","V","W","X","Y","Z","9"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.window?.setFrame(NSRect(x:0,y:0,width: 600,height: 500), display: true)
       self.title = "Simple IOTA Seed"
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func cSeed(_ sender: Any) {
     seedL.stringValue = seed()
    }
   
    
    func seed()->String{
        var sAr:String = ""
        var c:Int = 0
        while c<81{
            sAr = "\(sAr)\(ar[Int(arc4random_uniform(26))])"
            c=c+1
        }
        return sAr
        
        
    }
}

