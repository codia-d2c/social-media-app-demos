//
//  ProfileImageNetwork.swift
//
//  Created by codia-figma
//

import UIKit
import SnapKit


class ProfileImageNetwork: UIView {

    /// background view
    lazy var customView1: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 4, height: 16))
        view.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.41)
        return view
    }()

    /// background view
    lazy var customView2: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 4, height: 4))
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()

    /// background view
    lazy var customView3: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 4, height: 8))
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        return view
    }()

    /// background view
    lazy var customView4: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 4, height: 12))
        view.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
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
        self.addSubview(self.customView1)
        self.addSubview(self.customView4)
        self.addSubview(self.customView3)
        self.addSubview(self.customView2)
    }

    func setupConstraints() {
        customView1.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(4)
            make.bottom.equalTo(self.snp.bottom).offset(-2)
            make.height.equalTo(16)
        }

        customView2.snp.makeConstraints { make in
            make.left.equalTo(self.snp.left)
            make.width.equalTo(4)
            make.bottom.equalTo(customView1.snp.bottom)
            make.height.equalTo(4)
        }

        customView3.snp.makeConstraints { make in
            make.left.equalTo(customView1.snp.right).offset(2)
            make.width.equalTo(4)
            make.bottom.equalTo(customView1.snp.bottom)
            make.height.equalTo(8)
        }

        customView4.snp.makeConstraints { make in
            make.left.equalTo(customView3.snp.right).offset(2)
            make.width.equalTo(4)
            make.bottom.equalTo(customView1.snp.bottom)
            make.height.equalTo(12)
        }
    }
}