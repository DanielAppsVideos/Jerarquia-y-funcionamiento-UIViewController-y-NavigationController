//
//  NavBSecondViewController.swift
//  Navigation controllers Swift
//
//  Created by danielapps on 6/08/21.
//

import UIKit

class NavBSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        printNavigationStack()
    }

    @IBAction func didTapPush(_ sender: UIButton) {
        let nextViewController = self.storyboard?.instantiateViewController(identifier: "NavBThirdViewController")
        self.navigationController?.pushViewController(nextViewController!, animated: true)
    }
    
    @IBAction func didTapPop(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func didTapDismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

    func printNavigationStack(){
        guard let navigationControllers = self.navigationController?.viewControllers else { return }
        
        print("NavigationController 2 stack:")
        for viewController in navigationControllers {
            print("   \(viewController.navigationItem.title ?? "No Views")")
        }
    }
}
