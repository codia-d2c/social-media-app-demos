//
//  ProfileImageCamera.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileImageCamera: UIView {

    /// UIImageView: Oval
    lazy var imageView1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imageView1_6303@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    /// UIImageView: Oval
    lazy var imageView2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imageView2_6304@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    /// UIImageView: Oval
    lazy var imageView3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imageView3_6305@2x.png")
        view.contentMode = .scaleAspectFill

        return view
    }()

    var model: ProfileImageCameraModel?

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

    func bindCellModel(_ model: Any) {
        guard let model = model as? ProfileImageCameraModel else {
            return
        }
        self.model = model
        self.imageView1.image = UIImage(named: self.model?.imageView1Path ?? "")
        self.imageView2.image = UIImage(named: self.model?.imageView2Path ?? "")
        self.imageView3.image = UIImage(named: self.model?.imageView3Path ?? "")
    }

    func setupSubviews() {
        self.addSubview(self.imageView1)
        self.addSubview(self.imageView2)
        self.addSubview(self.imageView3)
    }

    func setupConstraints() {
        imageView1.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(18)
            make.top.equalTo(self.snp.top)
            make.height.equalTo(18)
        }

        imageView2.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left).offset(3.38)
            make.width.equalTo(11.25)
            make.top.equalTo(self.snp.top).offset(3.38)
            make.height.equalTo(11.25)
        }

        imageView3.snp.makeConstraints { make in
            make.left.equalTo(imageView2.snp.left).offset(4.5)
            make.width.equalTo(2.25)
            make.top.equalTo(imageView2.snp.top).offset(2.25)
            make.height.equalTo(2.25)
        }
    }
}