
import UIKit

class SecondViewController: UIViewController {
    
    // MARK: Variables
    var bmiValue = "0.0"
    
    // MARK: Statements
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    

}

