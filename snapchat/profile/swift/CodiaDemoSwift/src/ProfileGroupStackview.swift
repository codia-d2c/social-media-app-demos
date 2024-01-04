//
//  ProfileGroupStackview.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileGroupStackview: UIView {


    lazy var profileImageCamera: ProfileImageCamera = {
        let view = ProfileImageCamera(frame: CGRect(x: 0, y: 0, width: 18, height: 18))
        let model = ProfileImageCameraModel()
        model.imageView1Path = "imageView1_6303@2x.png"
    model.imageView2Path = "imageView2_6304@2x.png"
    model.imageView3Path = "imageView3_6305@2x.png"
        view.bindCellModel(model)
        return view
    }()


    lazy var profileImageWifi: ProfileImageWifi = {
        let view = ProfileImageWifi(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        return view
    }()


    lazy var profileImageNetwork: ProfileImageNetwork = {
        let view = ProfileImageNetwork(frame: CGRect(x: 0, y: 0, width: 23, height: 26))
        return view
    }()


    lazy var profileImageBattery: ProfileImageBattery = {
        let view = ProfileImageBattery(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
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
        self.addSubview(self.profileImageCamera)
        self.addSubview(self.profileImageBattery)
        self.addSubview(self.profileImageNetwork)
        self.addSubview(self.profileImageWifi)
    }

    func setupConstraints() {
        profileImageCamera.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(18)
            make.bottom.equalTo(self.snp.bottom).offset(-1)
            make.height.equalTo(18)
        }

        profileImageWifi.snp.makeConstraints { make in
            make.right.equalTo(self.snp.right).offset(-49)
            make.width.equalTo(20)
            make.bottom.equalTo(self.snp.bottom)
            make.height.equalTo(20)
        }

        profileImageNetwork.snp.makeConstraints { make in
            make.left.equalTo(profileImageWifi.snp.right).offset(5)
            make.width.equalTo(23)
            make.bottom.equalTo(profileImageCamera.snp.bottom)
            make.height.equalTo(26)
        }

        profileImageBattery.snp.makeConstraints { make in
            make.right.equalTo(self.snp.right)
            make.width.equalTo(20)
            make.bottom.equalTo(profileImageCamera.snp.bottom)
            make.height.equalTo(20)
        }
    }
}