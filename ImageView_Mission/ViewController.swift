//
//  ViewController.swift
//  ImageView_Mission
//
//  Created by hyeonsik on 2022/04/30.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var maxImage = 3

    @IBOutlet var imgViewer: UIImageView!
    
    @IBOutlet var BtnBack: UIButton!
    
    @IBOutlet var BtnNext: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgViewer.image = UIImage(named: "1.png")
        
        
    }
    
    @IBAction func BackImage(_ sender: UIButton) {
        numImage = numImage - 1
        if(numImage < 1) {
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"
        imgViewer.image = UIImage(named: imageName)
    }
    

    @IBAction func NextImage(_ sender: UIButton) {
        numImage = numImage + 1
        if(numImage > maxImage){
            numImage = 1
        }
        
        let imageName = String(numImage) + ".png"
        imgViewer.image = UIImage(named: imageName)
    }
    
}

