//
//  ProfileGroup7.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileGroup7: UIView {

    /// UIImageView: add
    lazy var profileAdd: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileAdd_2886@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    lazy var profileTextAddFriends: UILabel = {
        let label = UILabel()
        label.text = "Add Friends"
        label.font = UIFont(name: "Calibri", size: 15) ?? UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: back-R
    lazy var profileImageBack: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageBack_5032986@2x.png")
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
        self.addSubview(self.profileAdd)
        self.addSubview(self.profileTextAddFriends)
        self.addSubview(self.profileImageBack)
    }

    func setupConstraints() {
        profileAdd.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(14)
            make.width.equalTo(20)
            make.top.equalTo(self.snp.top).offset(17)
            make.height.equalTo(17.78)
        }

        profileTextAddFriends.snp.makeConstraints { make in
            make.left.equalTo(profileAdd.snp.right).offset(18)
            make.width.equalTo(258)
            make.centerY.equalTo(profileAdd.snp.bottom).offset(-8.78)
        }

        profileImageBack.snp.makeConstraints { make in
            make.left.equalTo(profileTextAddFriends.snp.right).offset(9)
            make.width.equalTo(15)
            make.centerY.equalTo(profileTextAddFriends.snp.centerY)
            make.height.equalTo(15)
        }
    }
}