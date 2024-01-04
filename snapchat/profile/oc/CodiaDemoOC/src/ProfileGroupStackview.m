//
//  ProfileGroupStackview.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroupStackview.h"
#import "ProfileImageBattery.h"
#import "ProfileImageCamera.h"
#import "ProfileImageCameraModel.h"
#import "ProfileImageNetwork.h"
#import "ProfileImageWifi.h"

@interface ProfileGroupStackview ()

@property (nonatomic, strong) ProfileImageCamera *profileImageCamera;
@property (nonatomic, strong) ProfileImageWifi *profileImageWifi;
@property (nonatomic, strong) ProfileImageNetwork *profileImageNetwork;
@property (nonatomic, strong) ProfileImageBattery *profileImageBattery;

@end

@implementation ProfileGroupStackview

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupSubviews];
        [self setupConstraints];
        self.backgroundColor = UIColor.clearColor;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}


- (void)setupSubviews {
    [self addSubview:self.profileImageCamera];
    [self addSubview:self.profileImageBattery];
    [self addSubview:self.profileImageNetwork];
    [self addSubview:self.profileImageWifi];
}

- (void)setupConstraints {
    [self.profileImageCamera mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(18);
        make.bottom.equalTo(self.mas_bottom).offset(-1);
        make.height.mas_equalTo(18);
    }];

    [self.profileImageWifi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(-49);
        make.width.mas_equalTo(20);
        make.bottom.equalTo(self.mas_bottom);
        make.height.mas_equalTo(20);
    }];

    [self.profileImageNetwork mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileImageWifi.mas_right).offset(5);
        make.width.mas_equalTo(23);
        make.bottom.equalTo(self.profileImageCamera.mas_bottom);
        make.height.mas_equalTo(26);
    }];

    [self.profileImageBattery mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.width.mas_equalTo(20);
        make.bottom.equalTo(self.profileImageCamera.mas_bottom);
        make.height.mas_equalTo(20);
    }];
}




- (ProfileImageCamera *)profileImageCamera {
    if (!_profileImageCamera) {
        _profileImageCamera = [[ProfileImageCamera alloc] initWithFrame:CGRectMake(0, 0, 18, 18)];
        ProfileImageCameraModel *model = [[ProfileImageCameraModel alloc] init];
        model.imageView1Path = @"imageView1_6303@2x.png";
        model.imageView2Path = @"imageView2_6304@2x.png";
        model.imageView3Path = @"imageView3_6305@2x.png";
        [_profileImageCamera bindModel:model];
    }
    return _profileImageCamera;
}

- (ProfileImageWifi *)profileImageWifi {
    if (!_profileImageWifi) {
        _profileImageWifi = [[ProfileImageWifi alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    }
    return _profileImageWifi;
}

- (ProfileImageNetwork *)profileImageNetwork {
    if (!_profileImageNetwork) {
        _profileImageNetwork = [[ProfileImageNetwork alloc] initWithFrame:CGRectMake(0, 0, 23, 26)];
    }
    return _profileImageNetwork;
}

- (ProfileImageBattery *)profileImageBattery {
    if (!_profileImageBattery) {
        _profileImageBattery = [[ProfileImageBattery alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
    }
    return _profileImageBattery;
}

@end