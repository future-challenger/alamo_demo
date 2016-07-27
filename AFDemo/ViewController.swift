//
//  ViewController.swift
//  AFDemo
//
//  Created by Bruce Lee on 25/7/2016.
//  Copyright © 2016 Dynamic Cell. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let BaseUrl = "https://api.github.com/"
    var repos: [RepoInfo]?
    
    @IBOutlet weak var repoTableView: UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        Alamofire.request(.GET, "\(BaseUrl)orgs/octokit/repos")
            .responseString{
                print("\($0.result.value)")
                if let result = $0.result.value {
                    self.repos = Mapper<RepoInfo>().mapArray(result)
                    self.repoTableView?.reloadData()
                }
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 55.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.repos?.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RepoCell") as! RepoCell
        if let repo = self.repos?[indexPath.row] {
            cell.setRepoInfo(repo)
        }
        return cell
    }
    
    @IBAction func doRequest(sender: UIButton) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

