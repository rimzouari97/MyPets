//
//  Home.swift
//  MyPet
//
//  Created by rim on 11/22/20.
//

import UIKit
class Home : UIViewController ,UIWebViewDelegate, UITableViewDataSource {
    
    var animals = ["original"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Acell")
        let contentView = cell?.contentView
        let textView = contentView?.viewWithTag(1) as! UITextView
        let imageView = contentView?.viewWithTag(2) as! UIImageView
        
        textView.text = animals[indexPath.row]
        imageView.image = UIImage(named: animals[indexPath.row])
        
        
        return cell!
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
