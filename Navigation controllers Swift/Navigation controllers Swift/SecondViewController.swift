//
//  oneViewController.swift
//  Navigation controllers Swift
//
//  Created by danielapps on 6/08/21.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        printNavigationStack()
    }
    
    @IBAction func didTapPush(_ sender: UIButton){
        let thirdViewController = storyboard?.instantiateViewController(identifier: "ThirdViewController")
        self.navigationController?.pushViewController(thirdViewController!, animated: true)
    }
    
    @IBAction func didTapPresentView(_ sender: UIButton) {
        let simpleViewController = self.storyboard?.instantiateViewController(identifier: "SimpleViewController")
        self.present(simpleViewController!, animated: true, completion: nil)
    }
    
    @IBAction func didTapPop(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    func printNavigationStack(){
        guard let navigationControllers = self.navigationController?.viewControllers else { return }
        
        print("NavigationController 1 stack:")
        for viewController in navigationControllers {
            print("   \(viewController.navigationItem.title ?? "No Views")")
        }
    }
    
}

