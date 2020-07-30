
import UIKit

class ViewController: UIViewController {
      var calculatorbrain = CalculatorBrain()
   
    @IBOutlet weak var zeroper: UIButton!
    @IBOutlet weak var twentyper: UIButton!
    @IBOutlet weak var tenper: UIButton!
    @IBOutlet weak var calculateInput: UITextField!
    @IBAction func selectedTips(_ sender: UIButton) {
        zeroper.isSelected = false
        tenper.isSelected = false
        twentyper.isSelected = false
        sender.isSelected = true
        calculatorbrain.setTips(sender.currentTitle)
    }
    
    @IBOutlet weak var chooseLabel: UILabel!
    
    @IBAction func chooseSplit(_ sender: UIStepper) {
        
        chooseLabel.text = String(format : "%.0f", sender.value)
        calculatorbrain.setSplit(Int(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         calculatorbrain.setSplit(2)
         calculatorbrain.setCalculatorInput("0")
         calculatorbrain.setTips("10%")
    }
    

  
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorbrain.setCalculatorInput(calculateInput.text)
        calculatorbrain.calculateResult()
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "goToResult"{
               let destinationVC = segue.destination as! ResultViewController
            
               destinationVC.result =  calculatorbrain.getResult()
           
           }
       }
    
}
