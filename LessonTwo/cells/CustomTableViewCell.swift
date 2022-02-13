//
//  CustomTableViewCell.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 20.10.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var titaleLable: UILabel!
    @IBOutlet weak var backView: UIView!
    
    var comletion: ((Friend) -> Void)?
    var friend: Friend?
    
    override func prepareForReuse() {
        avatarImageView.image = nil
        titaleLable.text = nil
        comletion = nil
        friend = nil
    }
    
    func configure(friend: Friend, completion: ((Friend) -> Void)?) {
        self.comletion = completion
        self.friend = friend
        avatarImageView.image = friend.avatar
        titaleLable.text = friend.name
        
    }
    
    func configure(group: Group){
        avatarImageView.image = group.avatar
        titaleLable.text = group.title
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImageView.layer.cornerRadius = 30
        backView.layer.cornerRadius = 30
        backView.layer.shadowColor = UIColor.black.cgColor
        backView.layer.shadowOffset = CGSize(width: 2, height: 2)
        backView.layer.shadowRadius = 2
        backView.layer.shadowOpacity = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func pressAvatarButton(_ sender: Any) {
       
        let scale = CGFloat(30)
        let frame = backView.frame
        
        
        UIView.animate(withDuration: 2)  {[weak self] in
            guard let self = self else{return}
            self.backView.frame = CGRect(x: self.avatarImageView.frame.origin.x + scale / 2,
                                         y: self.backView.frame.origin.y + scale,
                                         width: self.backView.frame.width - scale,
                                         height: self.backView.frame.height - scale)
        } completion: { isSuccessfully in
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.3,
                           initialSpringVelocity: 0.7,
                           options: []) { [weak self] in
                
                guard let self = self else{return}
                self.backView.frame = CGRect(x: self.backView.frame.origin.x - scale / 2,
                                             y: self.backView.frame.origin.y - scale,
                                             width: self.backView.frame.width + scale,
                                             height: self.backView.frame.height + scale)
            } completion: { [weak self] isAllSuccessfully in
                guard let self = self else{return}
                if isAllSuccessfully,
                   let friend = self.friend
                {
                    self.comletion?(friend)
                }
            }

        }
        
    }
}
