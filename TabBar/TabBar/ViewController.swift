//
//  mainView
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("tabIndex:",
              self.tabBarController?.selectedIndex)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("tabIndex ")
    }

    @IBAction func ViewDidload(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
    }
    
}

