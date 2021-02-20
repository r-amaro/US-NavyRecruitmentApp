//
//  LocationViewController.swift
//  NavyApp
//
//  Created by Rafael Amaro on 11/20/20.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {

    @IBOutlet var table: UITableView!
    @IBOutlet var field: UITextField!
    
    var data = [String]()
    var filteredData = [String]()
    var filtered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        title = "South Texas Locations"
        table.delegate = self
        table.dataSource = self
        field.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text {
            if string.count == 0{
                filterText(query: String(text.dropLast()))
            }else{
                filterText(query: text+string)
            }
        }
        
        return true
    }
    
    func filterText( query: String?) {
        filteredData.removeAll()
        for string in data{
            if string.lowercased().starts(with: (query?.lowercased())!){
                filteredData.append(string)
            }
        }
        table.reloadData()
        filtered = true
    }
    
    private func setupData() {
        data.append("Portland: (361)643-7574, 1500 Wildcat Dr N Shore, Plaza Suite K, Portland, TX 78374")
        data.append("Corpus Christi: (361)991-2111, 1620 S Padre Island Dr STE 230-2, Corpus Christi, TX 78416")
        data.append("Kingsville: (361)595-0120, 216 S 14th St A, Kingsville, TX 78363")
        data.append("Laredo: (956)724-7612, 301 W Calton Rd STE 701A STE 107A, Laredo, TX 78041")
        data.append("McAllen: (956)687-7120, 2625 N 23rd St STE 500, McAllen, TX 78501")
        data.append("Harlingen: (956)423-3418, 814 Dixieland Rd, Harlingen, TX 78552")
        data.append("Brownsville: (956)546-1888, 1805 Ruben M Torres Sr Boulevard Suite A5D, Brownsville, TX 78521")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !filteredData.isEmpty {
            return filteredData.count
        }
        return filtered ? 0 : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if !filteredData.isEmpty{
            cell.textLabel?.text = filteredData[indexPath.row]
        }
        else{
            cell.textLabel?.text = data[indexPath.row]
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
