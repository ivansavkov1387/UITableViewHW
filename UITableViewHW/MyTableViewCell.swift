//
//  MyTableViewCell.swift
//  UITableViewHW
//
//  Created by Иван on 8/3/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarOutlet: UIImageView!
    @IBOutlet weak var userNameOutlet: UILabel!
    @IBOutlet weak var postImageOutlet: UIImageView!
    @IBOutlet weak var postTextOutlet: UILabel!
    
    static let identifier = "myCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    
    public func configure(with image: String, with userName: String, and postText: String) {
        avatarOutlet.layer.cornerRadius = avatarOutlet.bounds.width / 2
        
        avatarOutlet.image = UIImage(named: image)
        userNameOutlet.text = userName
        postTextOutlet.attributedText = createCustomString(userName: userName, userNameText: postText)
        postImageOutlet.image = UIImage(named: image)
    }
    
    
    private func createCustomString(userName: String, userNameText: String) -> NSAttributedString {
        let mutableAttributedString = NSMutableAttributedString()
        let attributedUserName = NSMutableAttributedString(string: userName,
                                                           attributes: [.font: UIFont.init(name: "HelveticaNeue-Bold", size: 17)!])
        let attributedUserNameText = NSMutableAttributedString(string: userNameText,
                                                           attributes: [.font: UIFont.init(name: "HelveticaNeue", size: 17)!])
        mutableAttributedString.append(attributedUserName)
        mutableAttributedString.append(attributedUserNameText)
        return mutableAttributedString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
