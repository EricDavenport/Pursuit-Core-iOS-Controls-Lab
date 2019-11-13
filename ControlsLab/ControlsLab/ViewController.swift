import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var suitSelector: UISegmentedControl!
    
    @IBOutlet weak var valueStepper: UIStepper!
    
    
    // top left corner
    @IBOutlet weak var upperLeftNumber: UILabel!
    @IBOutlet weak var upperLeftSymbol: UILabel!
    // middle of card
    @IBOutlet weak var middleCardNumber: UILabel!
    @IBOutlet weak var middleCardSymbol: UILabel!
    // bottm right corner
    @IBOutlet weak var bottomRightNumber: UILabel!
    @IBOutlet weak var bottomRightSymbol: UILabel!
    
    
    var cardValue: Double = 1 {
        didSet {
        upperLeftNumber.text = String(format: "%0.f", valueStepper.value)
        middleCardNumber.text = String(format: "%0.f", valueStepper.value)
            bottomRightNumber.text = String(format: "%0.f", valueStepper.value)
        }
       // sliderLabel.text = String(format: "%0.f", sliderControl.value)
    }
    
    
    
    var suitSegmentIndex: Int = 0 {
        didSet {
            switch suitSelector.selectedSegmentIndex {
            case 0:
                upperLeftSymbol.text = "♠️"
                middleCardSymbol.text = "♠️"
                bottomRightSymbol.text = "♠️"
            case 1:
                upperLeftSymbol.text = "♥️"
                middleCardSymbol.text = "♥️"
                bottomRightSymbol.text = "♥️"
            case 2:
                upperLeftSymbol.text = "♣️"
                middleCardSymbol.text = "♣️"
                bottomRightSymbol.text = "♣️"
            case 3:
                upperLeftSymbol.text = "♦️"
                middleCardSymbol.text = "♦️"
                bottomRightSymbol.text = "♦️"
            default:
                upperLeftSymbol.text = "♠️"
                middleCardSymbol.text = "♠️"
                bottomRightSymbol.text = "♠️"
            }
            


        }


    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepperConfigure()
        
        upperLeftSymbol.text = "♠️"
        middleCardSymbol.text = "♠️"
        bottomRightSymbol.text = "♠️"

    }
    
    
    
    @IBAction func suitChanged(_ sender: UISegmentedControl) {
        suitSegmentIndex = sender.selectedSegmentIndex
    }
    
    
    @IBAction func valueChanged(_ sender: UIStepper) {
        cardValue = sender.value
    }
    
    
    
    
    
    func stepperConfigure() {
        valueStepper.maximumValue = 13
        valueStepper.minimumValue = 1
        valueStepper.stepValue = 1
        
        valueStepper.value = 1
    }
    
    
    
    
    
    
}

