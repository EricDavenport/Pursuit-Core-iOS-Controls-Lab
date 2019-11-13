import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var suitSelector: UISegmentedControl!
    
    @IBOutlet weak var valueStepper: UIStepper!
    
    var suitSegmentIndex: Int = 0 {
        didSet {
            switch suitSelector.selectedSegmentIndex {
            case 0:
                ♠️
            case 1:
                ♥️
            case 2:
                ♣️
            case 3:
                ♦️
            }
            
            
        }
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepperConfigure()

    }
    
    func stepperConfigure() {
        
        valueStepper.maximumValue = 13
        valueStepper.minimumValue = 1
        
    }
    
    
    
    
    
    
}

