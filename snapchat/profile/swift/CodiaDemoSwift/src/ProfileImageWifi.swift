//
//  ProfileImageWifi.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileImageWifi: UIView {

    /// UIImageView: Vector
    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imageView_2704@2x.png")
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
        self.addSubview(self.imageView)
    }

    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.right.equalTo(self.snp.right).offset(-0.83)
            make.width.equalTo(18.33)
            make.bottom.equalTo(self.snp.bottom).offset(-3.33)
            make.height.equalTo(12.96)
        }
    }
}