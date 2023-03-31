//
//  ViewController.swift
//  XDPopMenu
//
//  Created by 329720990@qq.com on 03/31/2023.
//  Copyright (c) 2023 329720990@qq.com. All rights reserved.
//

import UIKit
import XDPopMenu

class ViewController: UIViewController, XDPopMenuVCDelegate {

    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        let menuViewController = XDPopMenuVC(actions: [
            PopMenuDefaultAction(title: "标题1", image: UIImage(named: "icon")),
            PopMenuDefaultAction(title: "标题2", image: UIImage(named: "icon"))
        ])

        present(menuViewController, animated: true, completion: nil)

    }

    @IBAction func click(_ sender: UIButton) {
        let manager = XDPopMenuManager.default
        // Set actions
        manager.actions = [
            PopMenuDefaultAction(title: "Click me to", image: nil, color: .yellow),
            PopMenuDefaultAction(title: "Pop another menu", image: nil, color: .blue),
            PopMenuDefaultAction(title: "Try it out!", image: nil, color: .white)
        ]
        // Customize appearance
        manager.popMenuAppearance.popMenuFont = UIFont(name: "AvenirNext-DemiBold", size: 16)!
        manager.popMenuAppearance.popMenuBackgroundStyle = .blurred(.dark)
        manager.popMenuShouldDismissOnSelection = false
        manager.popMenuDelegate = self
        // Present menu
        manager.present(sourceView: sender)

    }
}

