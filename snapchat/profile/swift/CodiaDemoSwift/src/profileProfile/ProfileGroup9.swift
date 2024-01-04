//
//  ProfileGroup9.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileGroup9: UIView {

    /// UIImageView: Vector
    lazy var profileVector1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileVector1_2911@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    lazy var profileTextChangeOutfit: UILabel = {
        let label = UILabel()
        label.text = "Change My Outfit"
        label.font = UIFont(name: "Calibri", size: 15) ?? UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// background view
    lazy var profileImageRectangle: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 32, height: 13.71))
        view.backgroundColor = UIColor(red: 0.12, green: 0.53, blue: 0.90, alpha: 1.00)
        view.layer.cornerRadius = 2
        return view
    }()

    lazy var profileTextNew: UILabel = {
        let label = UILabel()
        label.text = "NEW"
        label.font = UIFont(name: "Calibri-Bold", size: 11) ?? UIFont.systemFont(ofSize: 11)
        label.textAlignment = .left
        label.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: back-R
    lazy var profileImageBack2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageBack2_5033000@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    /// UIImageView: Line 5
    lazy var profileLine1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileLine1_2917@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    /// UIImageView: Vector
    lazy var profileVector2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileVector2_2924@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    /// UIImageView: back-R
    lazy var profileImageBack3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileImageBack3_5033007@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    lazy var profileTextEditBitmoji: UILabel = {
        let label = UILabel()
        label.text = "Edit my Bitmoji"
        label.font = UIFont(name: "Calibri", size: 15) ?? UIFont.systemFont(ofSize: 15)
        label.textAlignment = .left
        label.textColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00)
        label.numberOfLines = 1;
        return label
    }()

    /// UIImageView: Line 5
    lazy var profileLine2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profileLine2_2923@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        self.layer.cornerRadius = 10
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
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
        self.addSubview(self.profileVector1)
        self.addSubview(self.profileTextChangeOutfit)
        self.addSubview(self.profileImageRectangle)
        self.addSubview(self.profileTextNew)
        self.addSubview(self.profileImageBack2)
        self.addSubview(self.profileLine1)
        self.addSubview(self.profileVector2)
        self.addSubview(self.profileTextEditBitmoji)
        self.addSubview(self.profileImageBack3)
        self.addSubview(self.profileLine2)
    }

    func setupConstraints() {
        profileVector1.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(11)
            make.width.equalTo(24)
            make.top.equalTo(self.snp.top).offset(15.12)
            make.height.equalTo(21.75)
        }

        profileTextChangeOutfit.snp.makeConstraints { make in
            make.left.equalTo(profileVector1.snp.right).offset(17)
            make.width.equalTo(189)
            make.centerY.equalTo(profileVector1.snp.centerY).offset(0)
        }

        profileImageRectangle.snp.makeConstraints { make in
            make.left.equalTo(profileTextChangeOutfit.snp.right).offset(9)
            make.width.equalTo(32)
            make.top.equalTo(profileVector1.snp.top).offset(3.38)
            make.height.equalTo(13.71)
        }

        profileTextNew.snp.makeConstraints { make in
            make.right.equalTo(profileImageRectangle.snp.right).offset(28)
            make.centerY.equalTo(profileVector1.snp.centerY).offset(-1)
        }

        profileImageBack2.snp.makeConstraints { make in
            make.left.equalTo(profileTextNew.snp.right).offset(9)
            make.width.equalTo(15)
            make.top.equalTo(profileImageRectangle.snp.top)
            make.height.equalTo(15)
        }

        profileLine1.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(347)
            make.top.equalTo(profileVector1.snp.bottom).offset(15.12)
            make.height.equalTo(1)
        }

        profileVector2.snp.makeConstraints { make in
            make.left.equalTo(profileVector1.snp.left)
            make.width.equalTo(24)
            make.top.equalTo(profileLine1.snp.bottom).offset(13.5)
            make.height.equalTo(24)
        }

        profileImageBack3.snp.makeConstraints { make in
            make.right.equalTo(profileImageBack2.snp.right)
            make.width.equalTo(15)
            make.centerY.equalTo(profileVector2.snp.bottom).offset(-11)
            make.height.equalTo(15)
        }

        profileTextEditBitmoji.snp.makeConstraints { make in
            make.right.equalTo(profileTextNew.snp.right)
            make.width.equalTo(258)
            make.centerY.equalTo(profileImageBack3.snp.centerY)
        }

        profileLine2.snp.makeConstraints { make in
            make.centerX.equalTo(profileLine1.snp.centerX)
            make.width.equalTo(347)
            make.top.equalTo(profileVector2.snp.bottom).offset(14.5)
            make.height.equalTo(1)
        }
    }
}