//
//  RootViewController.swift
//  Fonts
//
//  Created by Danilo Mutti on 02/28/17.
//  Copyright © 2017 Danilo Mutti. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {
    
    private var familyNames: [String]!
    private var cellPointSize: CGFloat!
    private var favoritesList: FavoritesList!
    private static let familyCell = "Family Name"
    private static let favoritesCell = "Favorites"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        familyNames = (UIFont.familyNames as [String]).sorted()
        let preferredTableViewFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        cellPointSize = preferredTableViewFont.pointSize
        favoritesList = FavoritesList.sharedFavoritesList
        tableView.estimatedRowHeight = cellPointSize
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
