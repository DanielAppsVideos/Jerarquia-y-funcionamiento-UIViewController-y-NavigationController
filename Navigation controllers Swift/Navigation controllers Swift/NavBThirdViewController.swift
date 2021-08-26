//
//  NavBThirdViewController.swift
//  Navigation controllers Swift
//
//  Created by danielapps on 6/08/21.
//

import UIKit

class NavBThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        printNavigationStack()
    }
    
    @IBAction func didTapToRoot(_ sender: UIButton){
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func didTapPop(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didTapDismiss(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil )
    } 
    func printNavigationStack(){
        guard let navigationControllers = self.navigationController?.viewControllers else { return }
        
        print("NavigationController 2 stack:")
        for viewController in navigationControllers {
            print("   \(viewController.navigationItem.title ?? "No Views")")
        }
    }
}


