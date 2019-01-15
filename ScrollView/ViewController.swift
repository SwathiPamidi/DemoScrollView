//
//  ViewController.swift
//  ScrollView
//
//  Created by Swathi on 12/29/18.
//  Copyright © 2018 Swathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button: UIButton! = nil
    
    @IBOutlet weak var EnterScrollView: UIScrollView!
    @IBOutlet weak var titleLable: UILabel!
    
    var yCord : CGFloat = 20
    let height : CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        createNewButton(title: "Tap 1 button", tag: 100)
        createNewButton(title: "Tap 2 button", tag: 101)
        createNewButton(title: "Tap 3 button", tag: 102)
        createNewButton(title: "Tap 4 button", tag: 103)
        createNewButton(title: "Tap 5 button", tag: 104)
        createNewButton(title: "Tap 6 button", tag: 105)
    }
    
    func createNewButton(title: String, tag : Int){
        yCord = (CGFloat(tag-100) * height) + (CGFloat(tag-99) * 20)
        let width = self.view.bounds.width
        button = UIButton()
        button.backgroundColor = UIColor.red
        button.tag = tag
        button.setTitle(title, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.frame = CGRect(x: width - (width * 19)/20, y: self.yCord, width: (width * 18)/20, height: height)
        EnterScrollView.addSubview(button)
        
        if tag == 105 {
            EnterScrollView.contentSize = CGSize(width: self.view.frame.size.width, height: yCord + height)
        }
    }

    @objc func buttonAction(sender: UIButton!) {
        print("\(sender.tag) button selected")
        titleLable.text = sender.titleLabel?.text
        self.performSegue(withIdentifier: "second", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            let destinationVC = segue.destination as? FirstVC
            destinationVC?.titleFromPre = titleLable.text
        }
    }
    
}

