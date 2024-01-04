//
//  ProfileImageBattery.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileImageBattery: UIView {

    /// UIImageView: Vector
    lazy var imageView4: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imageView4_2695@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    /// UIImageView: Vector
    lazy var imageView5: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imageView5_2696@2x.png")
        view.contentMode = .scaleAspectFill

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
        self.addSubview(self.imageView4)
        self.addSubview(self.imageView5)
    }

    func setupConstraints() {
        imageView4.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(6)
            make.width.equalTo(8)
            make.bottom.equalTo(self.snp.bottom).offset(-2)
            make.height.equalTo(16)
        }

        imageView5.snp.makeConstraints { make in
            make.left.equalTo(imageView4.snp.left)
            make.width.equalTo(8)
            make.bottom.equalTo(imageView4.snp.bottom)
            make.height.equalTo(11)
        }
    }
}