//
//  WolrdCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Alessandro on 28/08/19.
//  Copyright © 2019 Alessandro. All rights reserved.
//

import UIKit

class WolrdCupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Mark: Properties
    var wolrdCupEntity:WolrdCupEntity?
    let cellIdentifier = "WolrdCupTableViewCell"
    
    //Mark: Outlets
    
    @IBOutlet weak var flagWinner: UIImageView!
    @IBOutlet weak var flagVice: UIImageView!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var labelWinner: UILabel!
    @IBOutlet weak var labelVice: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
}

extension WolrdCupViewController{
    func configureView(){
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        tableView.register(UINib(nibName: "WolrdCupTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        
        if let wolrdCupEntity = wolrdCupEntity{
            flagWinner.image = UIImage(named: (wolrdCupEntity.winner))
            flagVice.image = UIImage(named: (wolrdCupEntity.vice))
            score.text = "\(wolrdCupEntity.winnerScore) X \(wolrdCupEntity.viceScore)"
            labelWinner.text = wolrdCupEntity.winner
            labelVice.text = wolrdCupEntity.vice
        }
        
        
    }
}

extension WolrdCupViewController{
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        let numOfMatches = wolrdCupEntity?.matches.count
        
        if let numOfMatches = numOfMatches{
              return numOfMatches
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let games = wolrdCupEntity?.matches[section].games.count
        
        if let games = games{
            return games
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! WolrdCupTableViewCell
        
        let matche = wolrdCupEntity?.matches[indexPath.section]
        let game = matche?.games[indexPath.row]
        
        if let game = game{
            cell.flagAway.image = UIImage(named: game.away)
            cell.lblAway.text = game.away
            cell.flagHome.image = UIImage(named: game.home)
            cell.lblHome.text = game.home
            cell.score.text = game.score
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let matche = wolrdCupEntity?.matches[section]
        
        return matche?.stage
        
        
    }
    
    
}
