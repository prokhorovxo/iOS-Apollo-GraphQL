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
    
    private var launches: [[LaunchFragment]] = []
    
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
        launches.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        launches[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LaunchCell", for: indexPath)
        let launch = launches[indexPath.section][indexPath.row]
        
        var contentConfiguration = UIListContentConfiguration.subtitleCell()
        
        contentConfiguration.text = launch.mission_name ?? ""
        let launchDate = inDateFormatter.date(from: launch.launch_date_utc ?? "") ?? .now
        contentConfiguration.secondaryText = outDateFormatter.string(from: launchDate)
        
        cell.contentConfiguration = contentConfiguration
        
        return cell
    }
}

private extension LaunchesViewController {
    
    func fetchLaunches() {
        let launchFind = LaunchFind(rocket_id: rocket.id ?? .none)
        let query = LaunchesQuery(upcomingFind: .some(launchFind), pastFind: .some(launchFind))
        NetworkService.shared.apollo.fetch(query: query, cachePolicy: .returnCacheDataAndFetch) { [weak self] result in
            switch result {
            case .success(let value):
                self?.launches = [
                    value.data?.launchesUpcoming?.compactMap { $0?.fragments.launchFragment } ?? [],
                    value.data?.launchesPast?.compactMap { $0?.fragments.launchFragment } ?? []
                ]
                self?.tableView.reloadData()
                
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
}
