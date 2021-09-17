//
//  ViewController.swift
//  Project12
//
//  Created by Igor Polousov on 16.09.2021.
//


// В этом проекте просто приведены примеры использования синтаксиса UserDefaults

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Заданы UserDefaults
        let defaults = UserDefaults.standard
        
        defaults.set(25, forKey: "Age")
        defaults.set(false, forKey: "UseFaceId")
        defaults.set(CGFloat.pi, forKey: "Pi")
        
        defaults.set("Paul Hudson", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello","world"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name": "Paul", "Country": "UK"]
        defaults.set(dict, forKey: "SavedDict")
        
        
        let savedInteger = defaults.integer(forKey: "Age")
        let savedBoolean = defaults.bool(forKey: "UseFaceId")
        
        let savedCGFloat = defaults.float(forKey: "Pi")
        
        let savedArray = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        let savedDictionary = defaults.object(forKey: "SavedDict") as? [String: String] ?? [String: String]()
        

    }


}

