//
//  ProfileGroup4.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileGroup4: UIView {

    lazy var profileTextPrivateStory: UILabel = {
        let label = UILabel()
        label.text = "Private Story"
        label.font = UIFont(name: "Calibri-Bold", size: 10) ?? UIFont.systemFont(ofSize: 10)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.34, green: 0.34, blue: 0.34, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: add 
    lazy var profileImageAdd: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageAdd_2857@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.41)
        self.layer.cornerRadius = 10
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
        self.addSubview(self.profileImageAdd)
        self.addSubview(self.profileTextPrivateStory)
    }

    func setupConstraints() {
        profileTextPrivateStory.snp.makeConstraints { make in
            make.right.equalTo(self.snp.right).offset(1)
            make.width.equalTo(60)
            make.centerY.equalTo(self.snp.top).offset(10)
        }

        profileImageAdd.snp.makeConstraints { make in
            make.right.equalTo(profileTextPrivateStory.snp.left).offset(-3)
            make.width.equalTo(8)
            make.centerY.equalTo(profileTextPrivateStory.snp.centerY)
            make.height.equalTo(8)
        }
    }
}