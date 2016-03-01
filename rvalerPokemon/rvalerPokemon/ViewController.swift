//
//  ViewController.swift
//  rvalerPokemon
//
//  Created by Rafael Valer on 2/29/16.
//  Copyright © 2016 RafaelValer. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let params = [
            "user" : "ash",
            "password" : "mistyS2"
        ]
        print("olar")
        
        Alamofire.request(.GET, "http://server03.local:60080/login", parameters: params, encoding: .URL).responseJSON { (result) -> Void in
//            print(result)
            
            let json = JSON(data: (result.data! ))
            print(json)
            if let userName = json["data"]["name"].string {
                //Now you got your value
                print(userName)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

