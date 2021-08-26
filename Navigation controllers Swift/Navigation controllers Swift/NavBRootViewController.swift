//
//  SecondNavigationRootViewController.swift
//  Navigation controllers Swift
//
//  Created by danielapps on 6/08/21.
//

import UIKit

class NavBRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        printNavigationStack()
    }
    @IBAction func didTapPush(_ sender: UIButton) {
        let nextViewController = self.storyboard?.instantiateViewController(identifier: "NavBSecondViewController")
        self.navigationController?.pushViewController(nextViewController!, animated: true)
    }
    
    @IBAction func didTapDismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapPresentView(_ sender: UIButton){
        let SimpleViewController = self.storyboard?.instantiateViewController(identifier: "SimpleViewController")
        self.present(SimpleViewController!, animated: true)
    }
    func printNavigationStack(){
        guard let navigationControllers = self.navigationController?.viewControllers else { return }
        
        print("NavigationController 2 stack:")
        for viewController in navigationControllers {
            print("   \(viewController.navigationItem.title ?? "No Views")")
        }
    }
    
}
