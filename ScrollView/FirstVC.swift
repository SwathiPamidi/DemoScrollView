//
//  FirstVC.swift
//  ScrollView
//
//  Created by Swathi on 12/30/18.
//  Copyright © 2018 Swathi. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    @IBOutlet weak var titleLable1: UILabel!
    @IBOutlet weak var textFeild: UITextField!
    
    var titleFromPre : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLable1.text = titleFromPre ?? ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func buttonTapped(_ sender: Any) {
        
        titleLable1.text = textFeild.text
        
    }
    
}
