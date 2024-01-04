//
//  ProfileProfile.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup3.h"
#import "ProfileGroup4.h"
#import "ProfileGroup5.h"
#import "ProfileGroup6.h"
#import "ProfileGroup7.h"
#import "ProfileGroup8.h"
#import "ProfileGroup9.h"
#import "ProfileProfile.h"
#import <UIKit/UIImageView.h>

@interface ProfileProfile ()

/// UIImageView: group
@property (nonatomic, strong) UIImageView *profileGroup1;
@property (nonatomic, strong) UILabel *profileTextName;
@property (nonatomic, strong) UILabel *profileTextUsername;
/// UIImageView: Ellipse 304
@property (nonatomic, strong) UIImageView *profileImageEllipse1;
@property (nonatomic, strong) UILabel *profileTextFollowers;
/// UIImageView: Ellipse 305
@property (nonatomic, strong) UIImageView *profileImageEllipse2;
/// UIImageView: group
@property (nonatomic, strong) UIImageView *profileGroup2;
@property (nonatomic, strong) ProfileGroup3 *profileGroup3;
@property (nonatomic, strong) UILabel *profileTextStories;
@property (nonatomic, strong) ProfileGroup4 *profileGroup4;
@property (nonatomic, strong) ProfileGroup5 *profileGroup5;
@property (nonatomic, strong) ProfileGroup6 *profileGroup6;
@property (nonatomic, strong) UILabel *profileTextFriends;
@property (nonatomic, strong) ProfileGroup7 *profileGroup7;
@property (nonatomic, strong) ProfileGroup8 *profileGroup8;
@property (nonatomic, strong) UILabel *profileTextBitmoji;
@property (nonatomic, strong) ProfileGroup9 *profileGroup9;

@end

@implementation ProfileProfile

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.layer.masksToBounds = YES;
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
    [self addSubview:self.profileGroup1];
    [self addSubview:self.profileTextName];
    [self addSubview:self.profileTextUsername];
    [self addSubview:self.profileImageEllipse1];
    [self addSubview:self.profileTextFollowers];
    [self addSubview:self.profileImageEllipse2];
    [self addSubview:self.profileGroup2];
    [self addSubview:self.profileGroup3];
    [self addSubview:self.profileTextStories];
    [self addSubview:self.profileGroup4];
    [self addSubview:self.profileGroup5];
    [self addSubview:self.profileGroup6];
    [self addSubview:self.profileTextFriends];
    [self addSubview:self.profileGroup7];
    [self addSubview:self.profileGroup8];
    [self addSubview:self.profileTextBitmoji];
    [self addSubview:self.profileGroup9];
}

- (void)setupConstraints {
    [self.profileGroup1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_left).offset(173.5);
        make.width.mas_equalTo(115);
        make.top.equalTo(self.mas_top).offset(14);
        make.height.mas_equalTo(115);
    }];

    [self.profileTextName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.width.mas_equalTo(340);
        make.centerY.equalTo(self.profileGroup1.mas_bottom).offset(32);
    }];

    [self.profileTextUsername mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.profileGroup1.mas_centerX).offset(-26.5);
        make.width.mas_equalTo(82);
        make.centerY.equalTo(self.profileTextName.mas_centerY).offset(26.5);
    }];

    [self.profileImageEllipse1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextUsername.mas_right).offset(10);
        make.width.mas_equalTo(5);
        make.centerY.equalTo(self.profileTextUsername.mas_centerY);
        make.height.mas_equalTo(5);
    }];

    [self.profileTextFollowers mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileGroup1.mas_centerX).offset(-1.5);
        make.centerY.equalTo(self.profileTextUsername.mas_centerY);
    }];

    [self.profileImageEllipse2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileGroup1.mas_right).offset(2);
        make.width.mas_equalTo(5);
        make.centerY.equalTo(self.profileTextUsername.mas_centerY);
        make.height.mas_equalTo(5);
    }];

    [self.profileGroup2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileImageEllipse2.mas_right).offset(10);
        make.width.mas_equalTo(41);
        make.centerY.equalTo(self.profileTextUsername.mas_centerY);
        make.height.mas_equalTo(17);
    }];

    [self.profileGroup3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileGroup2.mas_bottom).offset(19);
        make.height.mas_equalTo(52);
    }];

    [self.profileTextStories mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(263);
        make.centerY.equalTo(self.profileGroup3.mas_bottom).offset(31.67);
    }];

    [self.profileGroup4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right);
        make.width.mas_equalTo(75);
        make.centerY.equalTo(self.profileTextStories.mas_centerY);
        make.height.mas_equalTo(20);
    }];

    [self.profileGroup5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileGroup4.mas_bottom).offset(11);
        make.height.mas_equalTo(52);
    }];

    [self.profileGroup6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileGroup5.mas_bottom).offset(10);
        make.height.mas_equalTo(52);
    }];

    [self.profileTextFriends mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(348);
        make.centerY.equalTo(self.profileGroup6.mas_bottom).offset(31.67);
    }];

    [self.profileGroup7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileTextFriends.mas_centerY).offset(18);
        make.height.mas_equalTo(52);
    }];

    [self.profileGroup8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileGroup7.mas_bottom).offset(7);
        make.height.mas_equalTo(52);
    }];

    [self.profileTextBitmoji mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(348);
        make.centerY.equalTo(self.profileGroup8.mas_bottom).offset(31.67);
    }];

    [self.profileGroup9 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileTextBitmoji.mas_centerY).offset(17);
        make.height.mas_equalTo(158);
    }];
}




- (UIImageView *)profileGroup1 {
    if (!_profileGroup1) {
        _profileGroup1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileGroup1.image = [UIImage imageNamed:@"profileGroup1_502592@2x.png"];
        _profileGroup1.contentMode = UIViewContentModeScaleAspectFit;
        _profileGroup1.layer.cornerRadius = 15;
    }
     return _profileGroup1;
}

- (UILabel *)profileTextName {
    if (!_profileTextName) {
        _profileTextName = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextName.text = @"Jenny";
        _profileTextName.textAlignment = NSTextAlignmentCenter;
        _profileTextName.font = [UIFont fontWithName:@"Calibri-Bold" size:25] ?: [UIFont systemFontOfSize:25];
        _profileTextName.numberOfLines = 1;
        _profileTextName.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextName;
}

- (UILabel *)profileTextUsername {
    if (!_profileTextUsername) {
        _profileTextUsername = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextUsername.text = @"jenny98.12";
        _profileTextUsername.textAlignment = NSTextAlignmentCenter;
        _profileTextUsername.font = [UIFont fontWithName:@"Calibri" size:18] ?: [UIFont systemFontOfSize:18];
        _profileTextUsername.numberOfLines = 1;
        _profileTextUsername.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextUsername;
}

- (UIImageView *)profileImageEllipse1 {
    if (!_profileImageEllipse1) {
        _profileImageEllipse1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageEllipse1.image = [UIImage imageNamed:@"profileImageEllipse1_2267@2x.png"];
        _profileImageEllipse1.contentMode = UIViewContentModeScaleAspectFit;
        _profileImageEllipse1.layer.cornerRadius = 2.5;
    }
     return _profileImageEllipse1;
}

- (UILabel *)profileTextFollowers {
    if (!_profileTextFollowers) {
        _profileTextFollowers = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextFollowers.text = @"45,325";
        _profileTextFollowers.textAlignment = NSTextAlignmentCenter;
        _profileTextFollowers.font = [UIFont fontWithName:@"Calibri" size:18] ?: [UIFont systemFontOfSize:18];
        _profileTextFollowers.numberOfLines = 1;
        _profileTextFollowers.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextFollowers;
}

- (UIImageView *)profileImageEllipse2 {
    if (!_profileImageEllipse2) {
        _profileImageEllipse2 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageEllipse2.image = [UIImage imageNamed:@"profileImageEllipse2_2268@2x.png"];
        _profileImageEllipse2.contentMode = UIViewContentModeScaleAspectFit;
        _profileImageEllipse2.layer.cornerRadius = 2.5;
    }
     return _profileImageEllipse2;
}

- (UIImageView *)profileGroup2 {
    if (!_profileGroup2) {
        _profileGroup2 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileGroup2.image = [UIImage imageNamed:@"profileGroup2_502591@2x.png"];
        _profileGroup2.contentMode = UIViewContentModeScaleAspectFit;
        _profileGroup2.layer.cornerRadius = 7;
    }
     return _profileGroup2;
}

- (ProfileGroup3 *)profileGroup3 {
    if (!_profileGroup3) {
        _profileGroup3 = [[ProfileGroup3 alloc] initWithFrame:CGRectMake(0, 0, 347, 52)];
    }
    return _profileGroup3;
}

- (UILabel *)profileTextStories {
    if (!_profileTextStories) {
        _profileTextStories = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextStories.text = @"Stories";
        _profileTextStories.textAlignment = NSTextAlignmentLeft;
        _profileTextStories.font = [UIFont fontWithName:@"Calibri-Bold" size:18] ?: [UIFont systemFontOfSize:18];
        _profileTextStories.numberOfLines = 1;
        _profileTextStories.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextStories;
}

- (ProfileGroup4 *)profileGroup4 {
    if (!_profileGroup4) {
        _profileGroup4 = [[ProfileGroup4 alloc] initWithFrame:CGRectMake(0, 0, 75, 20)];
    }
    return _profileGroup4;
}

- (ProfileGroup5 *)profileGroup5 {
    if (!_profileGroup5) {
        _profileGroup5 = [[ProfileGroup5 alloc] initWithFrame:CGRectMake(0, 0, 347, 52)];
    }
    return _profileGroup5;
}

- (ProfileGroup6 *)profileGroup6 {
    if (!_profileGroup6) {
        _profileGroup6 = [[ProfileGroup6 alloc] initWithFrame:CGRectMake(0, 0, 347, 52)];
    }
    return _profileGroup6;
}

- (UILabel *)profileTextFriends {
    if (!_profileTextFriends) {
        _profileTextFriends = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextFriends.text = @"Friends";
        _profileTextFriends.textAlignment = NSTextAlignmentLeft;
        _profileTextFriends.font = [UIFont fontWithName:@"Calibri-Bold" size:18] ?: [UIFont systemFontOfSize:18];
        _profileTextFriends.numberOfLines = 1;
        _profileTextFriends.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextFriends;
}

- (ProfileGroup7 *)profileGroup7 {
    if (!_profileGroup7) {
        _profileGroup7 = [[ProfileGroup7 alloc] initWithFrame:CGRectMake(0, 0, 347, 52)];
    }
    return _profileGroup7;
}

- (ProfileGroup8 *)profileGroup8 {
    if (!_profileGroup8) {
        _profileGroup8 = [[ProfileGroup8 alloc] initWithFrame:CGRectMake(0, 0, 347, 52)];
    }
    return _profileGroup8;
}

- (UILabel *)profileTextBitmoji {
    if (!_profileTextBitmoji) {
        _profileTextBitmoji = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextBitmoji.text = @"Bitmoji";
        _profileTextBitmoji.textAlignment = NSTextAlignmentLeft;
        _profileTextBitmoji.font = [UIFont fontWithName:@"Calibri-Bold" size:18] ?: [UIFont systemFontOfSize:18];
        _profileTextBitmoji.numberOfLines = 1;
        _profileTextBitmoji.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextBitmoji;
}

- (ProfileGroup9 *)profileGroup9 {
    if (!_profileGroup9) {
        _profileGroup9 = [[ProfileGroup9 alloc] initWithFrame:CGRectMake(0, 0, 347, 158)];
    }
    return _profileGroup9;
}

@end