//
//  Video.swift
//  AVKit_FinalProject
//
//  Created by Igor Pyltsov on 20.07.2021.
//

import Foundation
import UIKit

struct Video {
    
    let videoImage:UIImage!
    let videoTitle:String!
    let videoUrl:URL!
    
    private enum VideoTitle:String {
        case title1 = "Aladdin"
        case title2 = "Avez Vous"
        case title3 = "The Kings Trumpet"
        case title4 = "xPopeye the Sailor Meets Aladdin and His Wonderful Lamp"
    }
    
    private enum VideoUrl:String {
        case video1 =  "https://ia802609.us.archive.org/23/items/Aladdin_315/Aladdin_512kb.mp4"
        case video2 = "https://ia800604.us.archive.org/19/items/Avez-vousDjVu...LePlusPetitZooDuMonde/104_Le_Plus_Petit_Zoo_du_Monde.mp4"
        case video3 = "https://ia800705.us.archive.org/28/items/TheSpiritOf43_56/The_Spirit_of__43_512kb.mp4"
        case video4 = "https://ia800703.us.archive.org/30/items/Popeye_the_Sailor_Meets_Aladdin_and_His_Wonderful_Lamp/Popeye_-_Aladdin_and_His_Wonderful_Lamp_512kb.mp4"
    }
    
    static func getVideoArray() -> [Video] {
        
        let v1 = Video(videoImage: UIImage(named: "v1"), videoTitle: VideoTitle.title1.rawValue, videoUrl: URL(string: VideoUrl.video1.rawValue))
        let v2 = Video(videoImage: UIImage(named: "v2"), videoTitle: VideoTitle.title2.rawValue, videoUrl: URL(string: VideoUrl.video2.rawValue))
        let v3 = Video(videoImage: UIImage(named: "v3"), videoTitle: VideoTitle.title3.rawValue, videoUrl: URL(string: VideoUrl.video3.rawValue))
        let v4 = Video(videoImage: UIImage(named: "v4"), videoTitle: VideoTitle.title4.rawValue, videoUrl: URL(string: VideoUrl.video4.rawValue))
        
        return [v1,v2,v3,v4]
    }
}


