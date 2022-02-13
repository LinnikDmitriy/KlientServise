//
//  GalleryCollectionCell.swift
//  LessonTwo
//
//  Created by linnik Dmitriy on 26.10.2021.
//

import UIKit

class GalleryCollectionCell: UICollectionViewCell {


    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var likeCounter: UILabel!
    @IBOutlet weak var heartButtom: UIButton!
    var likeEnable = false
    var counter = 0
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.photoImageView.image = nil
        likeEnable = false
        heartButtom.setImage(UIImage(systemName: "heart" ), for: .normal)}
    
    
    func configure(image: UIImage){
        photoImageView.image = image
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func pressHeartButtom(_ sender: Any) {
            guard let buttom = sender as? UIButton else {return}
            if likeEnable{
                buttom.setImage(UIImage(systemName: "heart" ), for: .normal)
                counter -= 1
                likeCounter.text = String(counter)
            }
            else{
                buttom.setImage(UIImage(systemName: "heart.fill" ), for: .normal)
                counter += 1
                likeCounter.text = String(counter)
                
            }
            likeEnable = !likeEnable
        }
    
    
    
    }
    
    
    

