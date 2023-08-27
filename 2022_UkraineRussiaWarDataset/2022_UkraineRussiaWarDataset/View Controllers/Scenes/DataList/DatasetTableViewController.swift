//
//  DatasetTableViewController.swift
//  2022_UkraineRussiaWarDataset
//
//  Created by Andrii Stetsenko on 22.08.2023.
//

import UIKit

protocol DataListDisplayLogic: AnyObject {
    func displayPersonnel(personels: [Personnel])
    func displayEquipment(equipements: [Equipment])
}

class DatasetTableViewController: UITableViewController, DataListDisplayLogic {
    // MARK: - Properties
    
    var interactor: DataListBusinessLogic?
    var router: (DataListRoutingLogic & DataListDataPassing)?
    
    var bannerImageView = UIImageView()
    var datasetSegmentedControl: UISegmentedControl!
    
    var personel: [Personnel] = []
    var equipement: [Equipment] = []
    var refresh: UIRefreshControl = UIRefreshControl()
    var currentSelected = 0
    
    let personnelCell = "PersonnelTableViewCell"
    let equipmentCell = "EquipmentTableViewCell"
    
    
    // MARK: - initializers
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    
    // MARK: Setup
    private func setup() {
        let viewController = self
        let interactor = DataListInteractor()
        let presenter = DataListPresenter()
        let router = DataListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDatasetSegmentedControl()
        
        tableView.register(PersonnelTableViewCell.self, forCellReuseIdentifier: personnelCell)
        tableView.register(EquipmentTableViewCell.self, forCellReuseIdentifier: equipmentCell)
        
        refreshItems(selectedIndex: currentSelected)
        refresh.addTarget(self, action: #selector(refreshTriggered(sedner:)), for: .valueChanged)
        tableView.refreshControl = refresh
    }
    
    
    // MARK: - Actions
    
    @objc func choiceSegment(sender: UISegmentedControl) {
        currentSelected = sender.selectedSegmentIndex
        refreshItems(selectedIndex: sender.selectedSegmentIndex)
    }
    
    
    // MARK: - Private functions
    
    func addDatasetSegmentedControl() {
        let segmentItems = ["Personnel", "Equipment"]
        datasetSegmentedControl = UISegmentedControl(items: segmentItems)
        datasetSegmentedControl.frame = CGRect(x: 60, y: 250, width: 200, height: 30)
        datasetSegmentedControl.addTarget(self, action: #selector(choiceSegment(sender:)), for: .valueChanged)
        datasetSegmentedControl.selectedSegmentIndex = 0
        self.navigationItem.titleView = datasetSegmentedControl
    }
    
    func refreshItems(selectedIndex: Int) {
        switch selectedIndex {
        case 0:
            if personel.count < 1 {
                reload(by: .personnel)
            } else {
                tableView.reloadData()
            }
        default:
            if equipement.count < 1 {
                reload(by: .equipment)
            } else {
                self.tableView.reloadData()
            }
        }
    }
    
    func reload(by type: RequestType) {
        switch type {
        case .personnel:
            interactor?.fetchData(by: .personnel)
        case .equipment:
            interactor?.fetchData(by: .equipment)
        }
    }
    
    @objc func refreshTriggered(sedner: UIRefreshControl) {
        switch currentSelected {
        case 0:
            reload(by: .personnel)
        default:
            reload(by: .equipment)
        }
    }
    
    
    // MARK: DataListDisplayLogic
    
    func displayPersonnel(personels: [Personnel]) {
        self.personel = personels
        tableView.reloadData()
    }
    
    func displayEquipment(equipements: [Equipment]) {
        self.equipement = equipements
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let selectedIndex = self.datasetSegmentedControl.selectedSegmentIndex
        switch selectedIndex {
        case 0:
            return personel.count
        case 1:
            return equipement.count
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectedIndex = self.datasetSegmentedControl.selectedSegmentIndex
        switch selectedIndex {
        case 0:
            let personelItem = personel[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: personnelCell, for: indexPath) as? PersonnelTableViewCell
            cell?.configure(with: personelItem)
            return cell!
        case 1:
            let equipemntItem = equipement[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: equipmentCell, for: indexPath) as? EquipmentTableViewCell
            cell?.configure(with: equipemntItem)
            return cell!
        default:
            return UITableViewCell()
        }
    }
    
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedIndex = self.datasetSegmentedControl.selectedSegmentIndex
        
        switch selectedIndex {
        case 0:
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let itemPersonnel = personel[indexPath.row]
                self.router?.routeToDetails(personnel: itemPersonnel)
            }
            
            tableView.deselectRow(at: indexPath, animated: true)
        case 1:
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let itemEquipment = equipement[indexPath.row]
                self.router?.routeToDetails(equipment: itemEquipment)
            }
            
            tableView.deselectRow(at: indexPath, animated: true)
            
        default:
            return
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 151))
        let bannerImage = UIImage(named: "banner.png")
        
        bannerImageView = UIImageView(image: bannerImage)
        bannerImageView.frame = CGRectMake(0, 0, view.frame.size.width, 151)
        bannerImageView.contentMode = .scaleAspectFit
        
        headerView.addSubview(bannerImageView)
        
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 151
    }
}
