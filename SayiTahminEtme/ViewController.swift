//
//  ViewController.swift
//  SayiTahminEtme
//
//  Created by Batuhan Berk Ertekin on 30.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hakLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    
  //  var timer = Timer()
    
    var kalanHak = 5
    
    let randomInt = Int.random(in: 0..<11)
    
    
    var data : Bool?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        hakLabel.text = "Kalan hak : \(kalanHak)"
        
        
    }
    
    @IBAction func tahminButton(_ sender: Any) {
        
        
    
         kalanHak  -= 1
        
        if let number = numberTextField.text {
            
            
            if let getData = Int(number) {
                
                
                if kalanHak != 0 {
                    if getData == randomInt {
                        
                        data = true
                        
                       
                        performSegue(withIdentifier: "gotoResultView", sender:data)
                        
                     
                        
                        
                        
                    } else if getData > randomInt {
                        hakLabel.text = "Kalan hak : \(kalanHak) "
                        infoLabel.text = "Azalt"
                        
                    }
                    
                    else if getData < randomInt {
                        hakLabel.text = "Kalan hak : \(kalanHak) "
                        infoLabel.text = "Yükselt"
                        
                    }
                    
                
               
                    
                }
            
                
                
                
               else  if  kalanHak == 0 {
                    
                    data = false
                   
                   
                    performSegue(withIdentifier: "gotoResultView", sender: data)
                } else {
                    
                   
                }
                
                
            }
        }
        
            
            
           
            
        }
    
        
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResultView" {
            
            let destinationVC = segue.destination as! ResultViewController
            
            
            destinationVC.getData = data
        }
    }

        
    }


    
   
    


