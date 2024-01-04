//
//  ProfileGroup8.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup8.h"
#import <UIKit/UIImageView.h>

@interface ProfileGroup8 ()

/// UIImageView: User
@property (nonatomic, strong) UIImageView *profileUser;
@property (nonatomic, strong) UILabel *profileTextMyFriends;
/// UIImageView: back-R
@property (nonatomic, strong) UIImageView *profileImageBack1;

@end

@implementation ProfileGroup8

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
        self.layer.cornerRadius = 10;
        self.layer.shadowOpacity = 1;
        self.layer.shadowRadius = 4;
        self.layer.shadowOffset = CGSizeMake(0, 2);
        self.layer.shadowColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:0.25].CGColor;
        [self setupSubviews];
        [self setupConstraints];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}


- (void)setupSubviews {
    [self addSubview:self.profileUser];
    [self addSubview:self.profileTextMyFriends];
    [self addSubview:self.profileImageBack1];
}

- (void)setupConstraints {
    [self.profileUser mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(14);
        make.width.mas_equalTo(15);
        make.top.equalTo(self.mas_top).offset(14.6);
        make.height.mas_equalTo(20.4);
    }];

    [self.profileTextMyFriends mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileUser.mas_right).offset(23);
        make.centerY.equalTo(self.profileUser.mas_bottom).offset(-9);
    }];

    [self.profileImageBack1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextMyFriends.mas_right).offset(10);
        make.width.mas_equalTo(15);
        make.bottom.equalTo(self.profileUser.mas_bottom).offset(-0);
        make.height.mas_equalTo(15);
    }];
}




- (UIImageView *)profileUser {
    if (!_profileUser) {
        _profileUser = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileUser.image = [UIImage imageNamed:@"profileUser_2450@2x.png"];
        _profileUser.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileUser;
}

- (UILabel *)profileTextMyFriends {
    if (!_profileTextMyFriends) {
        _profileTextMyFriends = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextMyFriends.text = @"My Friends";
        _profileTextMyFriends.textAlignment = NSTextAlignmentLeft;
        _profileTextMyFriends.font = [UIFont fontWithName:@"Calibri" size:15] ?: [UIFont systemFontOfSize:15];
        _profileTextMyFriends.numberOfLines = 1;
        _profileTextMyFriends.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextMyFriends;
}

- (UIImageView *)profileImageBack1 {
    if (!_profileImageBack1) {
        _profileImageBack1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageBack1.image = [UIImage imageNamed:@"profileImageBack1_502548@2x.png"];
        _profileImageBack1.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageBack1;
}

@end