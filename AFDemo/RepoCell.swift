//
//  RepoCell.swift
//  AFDemo
//
//  Created by Bruce Lee on 26/7/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var descriptionLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setRepoInfo(repo: RepoInfo) {
        self.titleLabel?.text = repo.fullName
        self.descriptionLabel?.text = repo.owner?.reposUrl
    }
}
