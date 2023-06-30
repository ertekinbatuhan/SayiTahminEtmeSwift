//
//  ResultViewController.swift
//  SayiTahminEtme
//
//  Created by Batuhan Berk Ertekin on 30.06.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
 
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!

    
    var getData : Bool?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        if getData == true {
            
            
            imageView.image = UIImage(named: "truee")
            resultLabel.text = " Tebrikler Bildiniz "
            
            
            
        } else {
            imageView.image = UIImage(named: "falsee")
            resultLabel.text = "Maalesef Bilemediniz"
        }
        
        
        
    }
    

    @IBAction func backButton(_ sender: Any) {
        
       
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
