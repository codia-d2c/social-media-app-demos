//
//  ProfileContainer.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileContainer.h"
#import "ProfileGroupStackview.h"
#import "ProfileProfile.h"
#import <UIKit/UIImageView.h>

@interface ProfileContainer ()

/// UIImageView: Screen-IMG
@property (nonatomic, strong) UIImageView *profileScreenImg;
@property (nonatomic, strong) UILabel *profileTextTime;
@property (nonatomic, strong) ProfileGroupStackview *profileGroupStackview;
/// UIImageView: Layer-ViewGroup_0_39
@property (nonatomic, strong) UIImageView *profileViewgroup;
@property (nonatomic, strong) ProfileProfile *profileProfile;

@end

@implementation ProfileContainer

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
    [self addSubview:self.profileScreenImg];
    [self addSubview:self.profileTextTime];
    [self addSubview:self.profileGroupStackview];
    [self addSubview:self.profileProfile];
    [self addSubview:self.profileViewgroup];
}

- (void)setupConstraints {
    [self.profileScreenImg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);

        make.top.equalTo(self.mas_top);
        make.bottom.equalTo(self.mas_bottom);

    }];

    [self.profileTextTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(23);
        make.centerY.equalTo(self.mas_top).offset(27.5);
    }];

    [self.profileGroupStackview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(-25);
        make.width.mas_equalTo(185);
        make.bottom.equalTo(self.profileTextTime.mas_centerY).offset(9.5);
        make.height.mas_equalTo(27);
    }];

    [self.profileViewgroup mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(self.mas_width).multipliedBy(0.98);
        make.top.equalTo(self.profileGroupStackview.mas_bottom).offset(6);
        make.height.mas_equalTo(42);
    }];

    [self.profileProfile mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextTime.mas_left).offset(1);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileViewgroup.mas_bottom).offset(2);
        make.height.mas_equalTo(754);
    }];
}




- (UIImageView *)profileScreenImg {
    if (!_profileScreenImg) {
        _profileScreenImg = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileScreenImg.image = [UIImage imageNamed:@"profileScreenImg_502580@2x.png"];
        _profileScreenImg.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileScreenImg;
}

- (UILabel *)profileTextTime {
    if (!_profileTextTime) {
        _profileTextTime = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextTime.text = @"12:45";
        _profileTextTime.textAlignment = NSTextAlignmentLeft;
        _profileTextTime.font = [UIFont fontWithName:@"Roboto-Bold" size:16] ?: [UIFont systemFontOfSize:16];
        _profileTextTime.numberOfLines = 1;
        _profileTextTime.textColor = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
    }
    return _profileTextTime;
}

- (ProfileGroupStackview *)profileGroupStackview {
    if (!_profileGroupStackview) {
        _profileGroupStackview = [[ProfileGroupStackview alloc] initWithFrame:CGRectMake(0, 0, 185, 27)];
    }
    return _profileGroupStackview;
}

- (UIImageView *)profileViewgroup {
    if (!_profileViewgroup) {
        _profileViewgroup = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileViewgroup.image = [UIImage imageNamed:@"profileViewgroup_2725@2x.png"];
        _profileViewgroup.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileViewgroup;
}

- (ProfileProfile *)profileProfile {
    if (!_profileProfile) {
        _profileProfile = [[ProfileProfile alloc] initWithFrame:CGRectMake(0, 0, 347, 754)];
    }
    return _profileProfile;
}

@end