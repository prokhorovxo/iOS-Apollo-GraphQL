//
//  LaunchesViewController.swift
//  ExampleApolloGraphQL
//
//  Created by Fedor Prokhorov on 06.01.2023.
//

import SpaceXAPI
import UIKit

final class LaunchesViewController: UITableViewController {
    
    var rocket: RocketsQuery.Data.Rocket!
    
    private let inDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return dateFormatter
    }()
    
    private let outDateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d yyyy, h:mm a"
        return dateFormatter
    }()
    
    private var upcomingLaunches: [LaunchesQuery.Data.LaunchesUpcoming] = []
    
    private var pastLaunches: [LaunchesQuery.Data.LaunchesPast] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = rocket.name
        fetchLaunches()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:     return "Upcoming launches"
        case 1:     return "Past launches"
        default:    return nil
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:     return upcomingLaunches.count
        case 1:     return pastLaunches.count
        default:    return .zero
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LaunchCell", for: indexPath)
        
        var contentConfiguration = UIListContentConfiguration.subtitleCell()
        
        let cellText: String
        let cellSecondaryText: String

        switch indexPath.section {
        case 0:
            let upcomingLaunch = upcomingLaunches[indexPath.row]
            cellText = upcomingLaunch.mission_name ?? ""
            let launchDate = inDateFormatter.date(from: upcomingLaunch.launch_date_utc ?? "") ?? .now
            cellSecondaryText = outDateFormatter.string(from: launchDate)
            
        case 1:
            let pastLaunch = pastLaunches[indexPath.row]
            cellText = pastLaunch.mission_name ?? ""
            let launchDate = inDateFormatter.date(from: pastLaunch.launch_date_utc ?? "") ?? .now
            cellSecondaryText = outDateFormatter.string(from: launchDate)
            
        default:
            cellText = ""
            cellSecondaryText = ""
        }
        
        contentConfiguration.text = cellText
        contentConfiguration.secondaryText = cellSecondaryText
        
        cell.contentConfiguration = contentConfiguration
        
        return cell
    }
}

private extension LaunchesViewController {
    
    func fetchLaunches() {
        let launchFind = LaunchFind(rocket_id: rocket.id ?? .none)
        let query = LaunchesQuery(upcomingFind: .some(launchFind), pastFind: .some(launchFind))
        NetworkService.shared.apollo.fetch(query: query) { [weak self] result in
            switch result {
            case .success(let value):
                self?.upcomingLaunches = value.data?.launchesUpcoming?.compactMap { $0 } ?? []
                self?.pastLaunches = value.data?.launchesPast?.compactMap { $0 } ?? []
                self?.tableView.reloadData()
                
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
}
