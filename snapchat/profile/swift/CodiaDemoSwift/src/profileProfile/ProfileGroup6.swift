//
//  ProfileGroup6.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileGroup6: UIView {

    /// UIImageView: camera
    lazy var profileCamera1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileCamera1_2875@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    lazy var profileTextAddOurStory: UILabel = {
        let label = UILabel()
        label.text = "Add to Our Story"
        label.font = UIFont(name: "Calibri", size: 15) ?? UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: menu-R
    lazy var profileImageMenu1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageMenu1_5032979@2x.png")
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
        self.addSubview(self.profileCamera1)
        self.addSubview(self.profileTextAddOurStory)
        self.addSubview(self.profileImageMenu1)
    }

    func setupConstraints() {
        profileCamera1.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(14)
            make.width.equalTo(25)
            make.top.equalTo(self.snp.top).offset(14)
            make.height.equalTo(22.5)
        }

        profileTextAddOurStory.snp.makeConstraints { make in
            make.left.equalTo(profileCamera1.snp.right).offset(13)
            make.width.equalTo(250)
            make.centerY.equalTo(profileCamera1.snp.centerY).offset(0)
        }

        profileImageMenu1.snp.makeConstraints { make in
            make.left.equalTo(profileTextAddOurStory.snp.right).offset(9)
            make.width.equalTo(24)
            make.top.equalTo(profileCamera1.snp.top)
            make.height.equalTo(24)
        }
    }
}