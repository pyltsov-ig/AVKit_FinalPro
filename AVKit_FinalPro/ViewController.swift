//
//  ViewController.swift
//  AVKit_FinalPro
//
//  Created by Igor Pyltsov on 21.07.2021.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let movies = Video.getVideoArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomCell else {return UITableViewCell()}
        
        cell.videoTitle.text = movies[indexPath.row].videoTitle
        cell.videoImage.image = movies[indexPath.row].videoImage
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let player = AVPlayer(url: movies[indexPath.row].videoUrl)
        let playerController = AVPlayerViewController()
        playerController.player = player
        playerController.allowsPictureInPicturePlayback = true
        
        self.present(playerController, animated: true) {
            playerController.player?.play()
        }

    }
    
    
}

