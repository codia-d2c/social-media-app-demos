//
//  ProfileGroup3.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileGroup3: UIView {

    /// UIImageView: find friend
    lazy var profileImageFindFriend: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageFindFriend_2846@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    lazy var profileTextFindFriends: UILabel = {
        let label = UILabel()
        label.text = "Find friends on Snapchat"
        label.font = UIFont(name: "Calibri", size: 15) ?? UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    lazy var profileTextSyncContact: UILabel = {
        let label = UILabel()
        label.text = "Tap to sync your contact"
        label.font = UIFont(name: "Calibri-Bold", size: 12) ?? UIFont.systemFont(ofSize: 12)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: Vector
    lazy var profileVector: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileVector_2844@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        self.layer.cornerRadius = 10
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 0.25).cgColor
        setupSubviews()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func layoutSubview() {
      super.layoutSubviews()
    }

    func setupSubviews() {
        self.addSubview(self.profileVector)
        self.addSubview(self.profileImageFindFriend)
        self.addSubview(self.profileTextFindFriends)
        self.addSubview(self.profileTextSyncContact)
    }

    func setupConstraints() {
        profileImageFindFriend.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(14)
            make.width.equalTo(18)
            make.top.equalTo(self.snp.top).offset(17)
            make.height.equalTo(18)
        }

        profileTextFindFriends.snp.makeConstraints { make in
            make.left.equalTo(profileImageFindFriend.snp.right).offset(20)
            make.centerY.equalTo(profileImageFindFriend.snp.top).offset(3)
        }

        profileTextSyncContact.snp.makeConstraints { make in
            make.left.equalTo(profileTextFindFriends.snp.left)
            make.centerY.equalTo(profileImageFindFriend.snp.bottom).offset(-0.5)
        }

        profileVector.snp.makeConstraints { make in
            make.left.equalTo(profileTextFindFriends.snp.right).offset(9)
            make.width.equalTo(10.17)
            make.top.equalTo(profileTextFindFriends.snp.centerY).offset(1)
            make.height.equalTo(10.17)
        }
    }
}