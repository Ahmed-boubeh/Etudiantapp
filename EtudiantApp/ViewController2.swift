//
//  ViewController2.swift
//  EtudiantApp
//
//  Created by Boubeh on 5/12/20.
//  Copyright © 2020 Boubeh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    
    

    @IBOutlet weak var NavItem: UINavigationItem!
    @IBOutlet weak var CrImage: UIImageView!
    @IBOutlet weak var CrName: UITextField!
    @IBOutlet weak var CrPhone: UITextField!
    @IBOutlet weak var CrEmail: UITextField!
    @IBOutlet weak var CrModule: UITextField!
    var indice : Int?

    
    @IBAction func Retour(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Choix(_ sender: UITapGestureRecognizer) {
        let imagePicker = UIImagePickerController()
               imagePicker.delegate = self
               imagePicker.sourceType = .photoLibrary
               present(imagePicker, animated : true)
    }
    
    @IBAction func ChoixImage(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
                      imagePicker.delegate = self
                      imagePicker.sourceType = .photoLibrary
                      present(imagePicker, animated : true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     CrImage.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func valider(_ sender: UIButton) {
                      if indice != nil {
                          Professor[indice!] = Professeurs(Name: CrName.text, Phone: CrPhone.text, Email: CrEmail.text, Module: CrModule.text, Image: CrImage.image?.pngData())
                      }
                      else {
                         Professor.append(Professeurs(Name: CrName.text, Phone: CrPhone.text, Email: CrEmail.text, Module: CrModule.text, Image: CrImage.image?.pngData()))
        }
                        
        }
    
    @IBOutlet weak var ValideButton: UIButton!
   
    override func viewDidLoad() {
           super.viewDidLoad()
                 if  let ind = indice {
                     CrName.text = Professor[ind].Name
                     CrPhone.text = Professor[ind].Phone
                     CrEmail.text = Professor[ind].Email
                     CrModule.text = Professor[ind].Module
                     CrImage.image = UIImage(data: Professor[ind].Image!)
                }
       }

}
