//
//  WinnersViewController.swift
//  CampeoesDaCopa
//
//  Created by Alessandro on 28/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

class WinnersViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var tableView:UITableView!
    
    
    //MARK: Properties
    
    var wolrdCups:[WolrdCupEntity] = []
    let cellIdentifier = "cell"
    var window: UIWindow?
    
    //MARK: Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        loadWinners()
        
        tableView.register(UINib(nibName: "WinnersTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
     }

    

    
    
    
}

extension WinnersViewController: WinnersPresenterProtocol{
    
    
    func all(wolrdCups: [WolrdCupEntity]) {
        self.wolrdCups = wolrdCups
    }
    
    func loadWinners(){
        WinnerInteractor(winnersPresenterProtocol: self).all()
    }
    
    func show(wolrdCup: WolrdCupEntity, winnersViewController: WinnersViewController) {
        let presenter = WinnersPresenter()
        presenter.show(wolrdCup: wolrdCup, winnersViewController: winnersViewController)
    }
    
}

extension WinnersViewController: UITableViewDataSource, UITableViewDelegate{
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wolrdCups.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! WinnersTableViewCell
        
        let wolrdCup = wolrdCups[indexPath.row]
        
        cell.lblCountry.text = wolrdCup.country
        cell.lblWinner.text = wolrdCup.winner
        cell.lblVice.text = wolrdCup.vice
        cell.lblWinnerScore.text = wolrdCup.winnerScore
        cell.lblViceScore.text = wolrdCup.viceScore
        cell.lblYear.text = String(wolrdCup.year)
        cell.imgFlagWinner.image = UIImage(named: wolrdCup.winner)
        cell.imgFlagVice.image = UIImage(named: wolrdCup.vice)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
     show(wolrdCup: wolrdCups[indexPath.row], winnersViewController: self)
    
    }
    
}


