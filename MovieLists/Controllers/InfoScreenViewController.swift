//
//  InfoScreenViewController.swift
//  MovieLists
//
//  Created by Edgars Jaudzems on 04/02/2021.
//

import UIKit

class InfoScreenViewController: UIViewController {

    @IBOutlet weak var loginButtonInterface: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButtonUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
    }
    
    @IBAction func settingButton(_ sender: Any) {
        openSettings()
    }
    
    func loginButtonUI() {
        loginButtonInterface.layer.cornerRadius = 20
        loginButtonInterface.layer.borderWidth = 1
        loginButtonInterface.layer.borderColor = UIColor.black.cgColor
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func openSettings() {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        
        if UIApplication.shared.canOpenURL(settingsURL) {
            UIApplication.shared.open(settingsURL, options: [:]) { (success) in
                print("open: ", success)
            }
        }
        
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
