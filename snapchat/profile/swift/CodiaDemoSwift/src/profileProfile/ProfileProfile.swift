//
//  ProfileProfile.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileProfile: UIView {

    /// UIImageView: group
    lazy var profileGroup1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileGroup1_5033037@2x.png")
        view.contentMode = .scaleAspectFill

        view.layer.cornerRadius = 15;
        return view
    }()

    lazy var profileTextName: UILabel = {
        let label = UILabel()
        label.text = "Jenny"
        label.font = UIFont(name: "Calibri-Bold", size: 25) ?? UIFont.systemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    lazy var profileTextUsername: UILabel = {
        let label = UILabel()
        label.text = "jenny98.12"
        label.font = UIFont(name: "Calibri", size: 18) ?? UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: Ellipse 304
    lazy var profileImageEllipse1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageEllipse1_2712@2x.png")
        view.contentMode = .scaleAspectFill

        view.layer.cornerRadius = 2.5;
        return view
    }()

    lazy var profileTextFollowers: UILabel = {
        let label = UILabel()
        label.text = "45,325"
        label.font = UIFont(name: "Calibri", size: 18) ?? UIFont.systemFont(ofSize: 18)
        label.textAlignment = .center
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: Ellipse 305
    lazy var profileImageEllipse2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageEllipse2_2713@2x.png")
        view.contentMode = .scaleAspectFill

        view.layer.cornerRadius = 2.5;
        return view
    }()

    /// UIImageView: group
    lazy var profileGroup2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileGroup2_5033036@2x.png")
        view.contentMode = .scaleAspectFill

        view.layer.cornerRadius = 7;
        return view
    }()


    lazy var profileGroup3: ProfileGroup3 = {
        let view = ProfileGroup3(frame: CGRect(x: 0, y: 0, width: 347, height: 52))
        return view
    }()

    lazy var profileTextStories: UILabel = {
        let label = UILabel()
        label.text = "Stories"
        label.font = UIFont(name: "Calibri-Bold", size: 18) ?? UIFont.systemFont(ofSize: 18)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()


    lazy var profileGroup4: ProfileGroup4 = {
        let view = ProfileGroup4(frame: CGRect(x: 0, y: 0, width: 75, height: 20))
        return view
    }()


    lazy var profileGroup5: ProfileGroup5 = {
        let view = ProfileGroup5(frame: CGRect(x: 0, y: 0, width: 347, height: 52))
        return view
    }()


    lazy var profileGroup6: ProfileGroup6 = {
        let view = ProfileGroup6(frame: CGRect(x: 0, y: 0, width: 347, height: 52))
        return view
    }()

    lazy var profileTextFriends: UILabel = {
        let label = UILabel()
        label.text = "Friends"
        label.font = UIFont(name: "Calibri-Bold", size: 18) ?? UIFont.systemFont(ofSize: 18)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()


    lazy var profileGroup7: ProfileGroup7 = {
        let view = ProfileGroup7(frame: CGRect(x: 0, y: 0, width: 347, height: 52))
        return view
    }()


    lazy var profileGroup8: ProfileGroup8 = {
        let view = ProfileGroup8(frame: CGRect(x: 0, y: 0, width: 347, height: 52))
        return view
    }()

    lazy var profileTextBitmoji: UILabel = {
        let label = UILabel()
        label.text = "Bitmoji"
        label.font = UIFont(name: "Calibri-Bold", size: 18) ?? UIFont.systemFont(ofSize: 18)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()


    lazy var profileGroup9: ProfileGroup9 = {
        let view = ProfileGroup9(frame: CGRect(x: 0, y: 0, width: 347, height: 158))
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.masksToBounds = true
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
        self.addSubview(self.profileGroup1)
        self.addSubview(self.profileTextName)
        self.addSubview(self.profileTextUsername)
        self.addSubview(self.profileImageEllipse1)
        self.addSubview(self.profileTextFollowers)
        self.addSubview(self.profileImageEllipse2)
        self.addSubview(self.profileGroup2)
        self.addSubview(self.profileGroup3)
        self.addSubview(self.profileTextStories)
        self.addSubview(self.profileGroup4)
        self.addSubview(self.profileGroup5)
        self.addSubview(self.profileGroup6)
        self.addSubview(self.profileTextFriends)
        self.addSubview(self.profileGroup7)
        self.addSubview(self.profileGroup8)
        self.addSubview(self.profileTextBitmoji)
        self.addSubview(self.profileGroup9)
    }

    func setupConstraints() {
        profileGroup1.snp.makeConstraints { make in
            make.centerX.equalTo(self.snp.left).offset(173.5)
            make.width.equalTo(115)
            make.top.equalTo(self.snp.top).offset(14)
            make.height.equalTo(115)
        }

        profileTextName.snp.makeConstraints { make in
            make.right.equalTo(self.snp.right)
            make.width.equalTo(340)
            make.centerY.equalTo(profileGroup1.snp.bottom).offset(32)
        }

        profileTextUsername.snp.makeConstraints { make in
            make.right.equalTo(profileGroup1.snp.centerX).offset(-26.5)
            make.width.equalTo(82)
            make.centerY.equalTo(profileTextName.snp.centerY).offset(26.5)
        }

        profileImageEllipse1.snp.makeConstraints { make in
            make.left.equalTo(profileTextUsername.snp.right).offset(10)
            make.width.equalTo(5)
            make.centerY.equalTo(profileTextUsername.snp.centerY)
            make.height.equalTo(5)
        }

        profileTextFollowers.snp.makeConstraints { make in
            make.left.equalTo(profileGroup1.snp.centerX).offset(-1.5)
            make.centerY.equalTo(profileTextUsername.snp.centerY)
        }

        profileImageEllipse2.snp.makeConstraints { make in
            make.left.equalTo(profileGroup1.snp.right).offset(2)
            make.width.equalTo(5)
            make.centerY.equalTo(profileTextUsername.snp.centerY)
            make.height.equalTo(5)
        }

        profileGroup2.snp.makeConstraints { make in
            make.left.equalTo(profileImageEllipse2.snp.right).offset(10)
            make.width.equalTo(41)
            make.centerY.equalTo(profileTextUsername.snp.centerY)
            make.height.equalTo(17)
        }

        profileGroup3.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(347)
            make.top.equalTo(profileGroup2.snp.bottom).offset(19)
            make.height.equalTo(52)
        }

        profileTextStories.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(263)
            make.centerY.equalTo(profileGroup3.snp.bottom).offset(31.67)
        }

        profileGroup4.snp.makeConstraints { make in
            make.right.equalTo(self.snp.right)
            make.width.equalTo(75)
            make.centerY.equalTo(profileTextStories.snp.centerY)
            make.height.equalTo(20)
        }

        profileGroup5.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(347)
            make.top.equalTo(profileGroup4.snp.bottom).offset(11)
            make.height.equalTo(52)
        }

        profileGroup6.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(347)
            make.top.equalTo(profileGroup5.snp.bottom).offset(10)
            make.height.equalTo(52)
        }

        profileTextFriends.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(348)
            make.centerY.equalTo(profileGroup6.snp.bottom).offset(31.67)
        }

        profileGroup7.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(347)
            make.top.equalTo(profileTextFriends.snp.centerY).offset(18)
            make.height.equalTo(52)
        }

        profileGroup8.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(347)
            make.top.equalTo(profileGroup7.snp.bottom).offset(7)
            make.height.equalTo(52)
        }

        profileTextBitmoji.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(348)
            make.centerY.equalTo(profileGroup8.snp.bottom).offset(31.67)
        }

        profileGroup9.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(347)
            make.top.equalTo(profileTextBitmoji.snp.centerY).offset(17)
            make.height.equalTo(158)
        }
    }
}