//
//  ViewController.swift
//  EtudiantApp
//
//  Created by Boubeh on 5/12/20.
//  Copyright © 2020 Boubeh. All rights reserved.
//

import UIKit

var Professor = [Professeurs]()
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
   // var Professor = Array<Professeurs>()
    @IBOutlet weak var TableViewProf: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Professor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.laName.text=Professor[indexPath.row].Name!
        cell.laPhone.text=Professor[indexPath.row].Phone!
        cell.laEmail.text=Professor[indexPath.row].Email!
        cell.laModule.text=Professor[indexPath.row].Module!
        cell.laImage.image=UIImage(data: Professor[indexPath.row].Image!)
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            Professor.remove(at: indexPath.row)
            TableViewProf.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "edit", sender: self)
    }

    
    @IBAction func addProf(_ sender: Any) {
        performSegue(withIdentifier: "add", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "edit" {
            let editDestination = segue.destination as! ViewController2
            editDestination.indice = TableViewProf.indexPathForSelectedRow!.row
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        TableViewProf.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Professor.append(Professeurs(Name: "Mario", Phone: "0641725874", Email: "mario@gmail.com", Module: "JAVA",Image: "mario"))
        TableViewProf.dataSource = self
        TableViewProf.delegate = self
    }
}

