//
//  ProfileGroup8.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileGroup8: UIView {

    /// UIImageView: User
    lazy var profileUser: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileUser_2895@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    lazy var profileTextMyFriends: UILabel = {
        let label = UILabel()
        label.text = "My Friends"
        label.font = UIFont(name: "Calibri", size: 15) ?? UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: back-R
    lazy var profileImageBack1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageBack1_5032993@2x.png")
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
        self.addSubview(self.profileUser)
        self.addSubview(self.profileTextMyFriends)
        self.addSubview(self.profileImageBack1)
    }

    func setupConstraints() {
        profileUser.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(14)
            make.width.equalTo(15)
            make.top.equalTo(self.snp.top).offset(14.6)
            make.height.equalTo(20.4)
        }

        profileTextMyFriends.snp.makeConstraints { make in
            make.left.equalTo(profileUser.snp.right).offset(23)
            make.centerY.equalTo(profileUser.snp.bottom).offset(-9)
        }

        profileImageBack1.snp.makeConstraints { make in
            make.left.equalTo(profileTextMyFriends.snp.right).offset(10)
            make.width.equalTo(15)
            make.bottom.equalTo(profileUser.snp.bottom).offset(-0)
            make.height.equalTo(15)
        }
    }
}