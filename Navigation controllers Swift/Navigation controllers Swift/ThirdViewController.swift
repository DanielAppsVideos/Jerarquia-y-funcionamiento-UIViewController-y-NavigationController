//
//  thirdViewController.swift
//  Navigation controllers Swift
//
//  Created by danielapps on 6/08/21.
//

import UIKit

class ThirdViewController: UIViewController {

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
    
    @IBAction func didTapPresentNavB(_ sender: UIButton){
        let navBController = storyboard?.instantiateViewController(identifier: "NavB")
        self.navigationController?.present(navBController!, animated: true, completion: nil)
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
