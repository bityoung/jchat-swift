//
//  JCJChatInfoCell.swift
//  JChat
//
//  Created by deng on 2017/5/24.
//  Copyright © 2017年 HXHG. All rights reserved.
//

import UIKit

class JCJChatInfoCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        _init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        _init()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        _init()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    private lazy var avatorView: UIImageView = UIImageView()
    private lazy var nameLabel: UILabel = UILabel()
    
    //MARK: - private func
    private func _init() {
        
        avatorView.image = UIImage.loadImage("com_icon_about")
        
        let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
        nameLabel.textAlignment = .center
        nameLabel.text = "JChat v\(String(describing: version!))"
        nameLabel.font = UIFont.systemFont(ofSize: 15)
        nameLabel.textColor = UIColor(netHex: 0x999999)
        
        contentView.addSubview(avatorView)
        contentView.addSubview(nameLabel)
        
        addConstraint(_JCLayoutConstraintMake(avatorView, .top, .equal, contentView, .top, 27))
        addConstraint(_JCLayoutConstraintMake(avatorView, .centerX, .equal, contentView, .centerX))
        addConstraint(_JCLayoutConstraintMake(avatorView, .width, .equal, nil, .notAnAttribute, 56))
        addConstraint(_JCLayoutConstraintMake(avatorView, .height, .equal, nil, .notAnAttribute, 56))
        
        addConstraint(_JCLayoutConstraintMake(nameLabel, .top, .equal, avatorView, .bottom, 9))
        addConstraint(_JCLayoutConstraintMake(nameLabel, .right, .equal, contentView, .right))
        addConstraint(_JCLayoutConstraintMake(nameLabel, .left, .equal, contentView, .left))
        addConstraint(_JCLayoutConstraintMake(nameLabel, .height, .equal, nil, .notAnAttribute, 22.5))
    }
}