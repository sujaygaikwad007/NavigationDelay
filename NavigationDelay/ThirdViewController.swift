
import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var firstBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func firstBtnTapped(_ sender: UIButton) {
        
      
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
