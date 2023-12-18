import UIKit
class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var thirdBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func thirdBtnTapped(_ sender: UIButton) {
        
        let thirdVc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdVc, animated: true)
    }
    

}
