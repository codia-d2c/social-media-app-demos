//
//  ProfileContainer.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileContainer: UIView {

    /// UIImageView: Screen-IMG
    lazy var profileScreenImg: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileScreenImg_5033025@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    lazy var profileTextTime: UILabel = {
        let label = UILabel()
        label.text = "12:45"
        label.font = UIFont(name: "Roboto-Bold", size: 16) ?? UIFont.systemFont(ofSize: 16)
        label.textAlignment = .left
        label.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()


    lazy var profileGroupStackview: ProfileGroupStackview = {
        let view = ProfileGroupStackview(frame: CGRect(x: 0, y: 0, width: 185, height: 27))
        return view
    }()

    /// UIImageView: Layer-ViewGroup_0_39
    lazy var profileViewgroup: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileViewgroup_3170@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()


    lazy var profileProfile: ProfileProfile = {
        let view = ProfileProfile(frame: CGRect(x: 0, y: 0, width: 347, height: 754))
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupConstraints()
        self.backgroundColor = UIColor.clear
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func layoutSubview() {
      super.layoutSubviews()
    }

    func setupSubviews() {
        self.addSubview(self.profileScreenImg)
        self.addSubview(self.profileTextTime)
        self.addSubview(self.profileGroupStackview)
        self.addSubview(self.profileProfile)
        self.addSubview(self.profileViewgroup)
    }

    func setupConstraints() {
        profileScreenImg.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.right.equalTo(self.snp.right)

            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)

        }

        profileTextTime.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(23)
            make.centerY.equalTo(self.snp.top).offset(27.5)
        }

        profileGroupStackview.snp.makeConstraints { make in
            make.right.equalTo(self.snp.right).offset(-25)
            make.width.equalTo(185)
            make.bottom.equalTo(profileTextTime.snp.centerY).offset(9.5)
            make.height.equalTo(27)
        }

        profileViewgroup.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(self.snp.width).multipliedBy(0.98)
            make.top.equalTo(profileGroupStackview.snp.bottom).offset(6)
            make.height.equalTo(42)
        }

        profileProfile.snp.makeConstraints { make in
            make.left.equalTo(profileTextTime.snp.left).offset(1)
            make.width.equalTo(347)
            make.top.equalTo(profileViewgroup.snp.bottom).offset(2)
            make.height.equalTo(754)
        }
    }
}