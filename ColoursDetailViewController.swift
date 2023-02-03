//
//  ColoursDetailViewController.swift
//  ColoursApp
//
//  Created by Dhiman, Sabi (Consumer Servicing & Engagement Platform) on 01/02/2023.
//

import UIKit

class ColoursDetailViewController: UIViewController {
    
    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = color ?? UIColor.blue
        //nil colescing
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
