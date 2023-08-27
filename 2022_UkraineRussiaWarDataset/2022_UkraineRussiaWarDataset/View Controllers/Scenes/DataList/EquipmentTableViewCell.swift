//
//  EquipmentTableViewCell.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 24.08.2023.
//

import UIKit

class EquipmentTableViewCell: UITableViewCell {
    // MARK: - Properties
    
    var dateLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemRed
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    var detailsLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .systemGray
        lbl.font = UIFont.systemFont(ofSize: 10)
        lbl.textAlignment = .right
        return lbl
    }()
    
    
    // MARK: - Life cycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        self.selectionStyle = UITableViewCell.SelectionStyle.none
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        contentView.addSubview(dateLabel)
        contentView.addSubview(detailsLabel)
    }
    
    func setupConstraints() {
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        dateLabel.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        dateLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        detailsLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        detailsLabel.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        detailsLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }

    
    // MARK: - Private functions
    
    func configure(with equipment: Equipment) {
        dateLabel.text = "\(equipment.date)"
        detailsLabel.text = "Equipment details"
        
        self.accessoryType = .disclosureIndicator
        self.selectionStyle = UITableViewCell.SelectionStyle.none
    }

}
