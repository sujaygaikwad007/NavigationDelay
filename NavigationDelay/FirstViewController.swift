
import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var secondBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func secondBtnTapped(_ sender: UIButton) {
        
              if showSecondPage() {
                  
                    navigateToSecondPage()
                  
                } else {
                    navigateToThirdPage()
        }
        
        
        
    }

    func showSecondPage() -> Bool {
        if let lastVisitTimestamp = UserDefaults.standard.object(forKey: "lastVisitTimestamp") as? Date {
            let currentTime = Date()
            let timeDifference = currentTime.timeIntervalSince(lastVisitTimestamp)
            print("Last Visit Timestamp: \(lastVisitTimestamp)")
            print("Current Time: \(currentTime)")
            print("Time Difference: \(timeDifference)")
            return timeDifference >= 60 //for a minute
        }
        return true
    }

    
    
    
    func navigateToSecondPage() {
        
        UserDefaults.standard.set(Date(), forKey: "lastVisitTimestamp")
           
        let SecondVc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(SecondVc, animated: true)
        }
    
    
    func navigateToThirdPage() {
            let thirdVC = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
            navigationController?.pushViewController(thirdVC, animated: true)
        }
    
}

