//
//  RootViewController.swift
//  Navigation controllers Swift
//
//  Created by danielapps on 6/08/21.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        printNavigationStack()
    }
    
    @IBAction func didTapPush(_ sender: UIButton) {
        let nextViewController = self.storyboard?.instantiateViewController(identifier: "SecondViewController")
        self.navigationController?.pushViewController(nextViewController!, animated: true)
    }
    
    @IBAction func didTapPresentView(_ sender: UIButton) {
        let simpleViewController = self.storyboard?.instantiateViewController(identifier: "SimpleViewController")
        self.present(simpleViewController!, animated: true, completion: nil)
    }
    
    @IBAction func didTapPresentNavB(_ sender: UIButton) {
        let navBController = self.storyboard?.instantiateViewController(identifier: "NavB")
        self.present(navBController!, animated: true, completion: nil)
    }
    
    func printNavigationStack(){
        guard let navigationControllers = self.navigationController?.viewControllers else { return }
        
        print("NavigationController 1 stack:")
        for viewController in navigationControllers {
            print("   \(viewController.navigationItem.title ?? "No Views")")
        }
    }
}

