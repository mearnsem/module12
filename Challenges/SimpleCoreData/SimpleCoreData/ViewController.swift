//
//  ViewController.swift
//  SimpleCoreData
//
//  Created by Emily Mearns on 5/18/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let request = NSFetchRequest(entityName: "Person")
        let moc = Stack.sharedStack.managedObjectContext
        if let people = try? moc.executeFetchRequest(request), person = people.first {
            let name = person.valueForKey("name") as! String
            textField.text = name
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func saveButtonTapped(sender: UIButton) {
        let moc = Stack.sharedStack.managedObjectContext
        let entity = NSEntityDescription.entityForName("Person", inManagedObjectContext: moc)!
        let person = NSManagedObject(entity: entity, insertIntoManagedObjectContext: moc)
        person.setValue(textField.text, forKey: "name")
        let _ = try? moc.save()
    }

}

