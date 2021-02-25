//
//  PersonaTableViewCell.swift
//  03_NavegacionConTablas
//
//  Created by Alumno on 23/02/2021.
//

import UIKit

class PersonaTableViewCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var edadLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
