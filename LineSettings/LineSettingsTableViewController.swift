//
//  LineSettingsTableViewController.swift
//  LineSettings
//
//  Created by 陳姿穎 on 2019/7/25.
//  Copyright © 2019 陳姿穎. All rights reserved.
//

import UIKit

class LineSettingsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return lineSettings.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0: return lineSettings[0].count
        case 1: return lineSettings[1].count
        case 2: return lineSettings[2].count
        case 3: return lineSettings[3].count
        case 4: return lineSettings[4].count
        default: return 0
        }
    }

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = lineSettings[indexPath.section][indexPath.row].labelName
        cell.imageView?.image = UIImage(named: lineSettings[indexPath.section][indexPath.row].imageName)
        
        return cell
    }

    var lineSettings: [[lineSetting]] = [
        
        [lineSetting(imageName: "icons8-user_filled", labelName: "Profile"),
         lineSetting(imageName: "icons8-security_pass_filled", labelName: "Account"),
         lineSetting(imageName: "icons8-lock_filled", labelName: "Privacy"),
         lineSetting(imageName: "icons8-security_checked_filled", labelName: "Account transfer"),
         lineSetting(imageName: "icons8-circled_down_2_filled", labelName: "Keep")],
        
        [lineSetting(imageName: "icons8-happy_filled", labelName: "Stickers"),
         lineSetting(imageName: "icons8-paint_brush_filled", labelName: "Themes"),
         lineSetting(imageName: "icons8-musical_notes_filled", labelName: "Melodies"),
         lineSetting(imageName: "icons8-albanian_lek_filled", labelName: "Coins")],
        
        [lineSetting(imageName: "icons8-medium_volume_filled", labelName: "Notifications"),
         lineSetting(imageName: "icons8-next_filled", labelName: "Photos & Videos"),
         lineSetting(imageName: "icons8-speech_bubble_with_dots_filled", labelName: "Chats"),
         lineSetting(imageName: "icons8-phone_filled", labelName: "Calls"),
         lineSetting(imageName: "icons8-group_filled", labelName: "Friends"),
         lineSetting(imageName: "icons8-clock_filled", labelName: "Timeline"),
         lineSetting(imageName: "icons8-earth_planet_filled", labelName: "Language"),
         lineSetting(imageName: "icons8-lab_items_filled", labelName: "LINE Labs")],
        
        [lineSetting(imageName: "icons8-siri_filled", labelName: "Siri Shortcuts")],
        
        [lineSetting(imageName: "icons8-megaphone_filled", labelName: "Announcements"),
         lineSetting(imageName: "icons8-help_filled", labelName: "Help"),
         lineSetting(imageName: "icons8-about_filled", labelName: "About LINE")]
         
    ]
}
