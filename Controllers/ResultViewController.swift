

import UIKit

class ResultViewController: UIViewController {

    // MARK: - Variables
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    // MARK: - Outlets
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    // MARK: - Actions
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
}
