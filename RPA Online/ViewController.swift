//
//
//  RPA Online
//
//  Created by Eduardo Programador on 1/17/22.
//  Copyright © 2022 Eduardo Programador. All rights reserved.

//    IOS Developer
//      www.eduardoprogramador.com

import UIKit
import Foundation


class ViewController: UIViewController {
    
    @IBOutlet weak var editIss: UITextField!
    
    @IBOutlet weak var editValue: UITextField!
    
    
    @IBOutlet weak var editChildren: UITextField!
    
    
    @IBOutlet weak var editAcumulated: UITextField!
    
    @IBOutlet weak var aSwitchCity: UISwitch!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func getRpa(sender: UIButton) {
        
        let iss : String? = editIss.text!
        let value : String? = editValue.text!
        let children : String? = editChildren.text!
        let acumulated : String? = editAcumulated.text!
        let city : String? = (aSwitchCity.selected) ? "Nao" : "Sim"
        let response : AutoreleasingUnsafeMutablePointer<NSURLResponse?> = nil
        
     
        
        var urlPath = "https://eduardoprogramador.com/php/rpa_api.php?"
        urlPath += "iss=" + iss! + "&valor=" + value! + "&dependentes=" + children!
        urlPath += "&recebido=" + acumulated! + "&prefeitura=" + city!
        
        let url = NSURL(string: urlPath)
        
        let request = NSURLRequest(URL: url!)
        
        do {
        
            let dataVal = try NSURLConnection.sendSynchronousRequest(request, returningResponse: response)
            
            
            //code json respose
            
        
        } catch let error as NSError {
            
            print("Error: " + error.localizedDescription)
            
            //code error response
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

