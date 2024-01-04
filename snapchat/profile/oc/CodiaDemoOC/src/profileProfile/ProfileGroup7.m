//
//  ProfileGroup7.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup7.h"
#import <UIKit/UIImageView.h>

@interface ProfileGroup7 ()

/// UIImageView: add
@property (nonatomic, strong) UIImageView *profileAdd;
@property (nonatomic, strong) UILabel *profileTextAddFriends;
/// UIImageView: back-R
@property (nonatomic, strong) UIImageView *profileImageBack;

@end

@implementation ProfileGroup7

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
    [self addSubview:self.profileAdd];
    [self addSubview:self.profileTextAddFriends];
    [self addSubview:self.profileImageBack];
}

- (void)setupConstraints {
    [self.profileAdd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(14);
        make.width.mas_equalTo(20);
        make.top.equalTo(self.mas_top).offset(17);
        make.height.mas_equalTo(17.78);
    }];

    [self.profileTextAddFriends mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileAdd.mas_right).offset(18);
        make.width.mas_equalTo(258);
        make.centerY.equalTo(self.profileAdd.mas_bottom).offset(-8.78);
    }];

    [self.profileImageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextAddFriends.mas_right).offset(9);
        make.width.mas_equalTo(15);
        make.centerY.equalTo(self.profileTextAddFriends.mas_centerY);
        make.height.mas_equalTo(15);
    }];
}




- (UIImageView *)profileAdd {
    if (!_profileAdd) {
        _profileAdd = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileAdd.image = [UIImage imageNamed:@"profileAdd_2441@2x.png"];
        _profileAdd.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileAdd;
}

- (UILabel *)profileTextAddFriends {
    if (!_profileTextAddFriends) {
        _profileTextAddFriends = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextAddFriends.text = @"Add Friends";
        _profileTextAddFriends.textAlignment = NSTextAlignmentLeft;
        _profileTextAddFriends.font = [UIFont fontWithName:@"Calibri" size:15] ?: [UIFont systemFontOfSize:15];
        _profileTextAddFriends.numberOfLines = 1;
        _profileTextAddFriends.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextAddFriends;
}

- (UIImageView *)profileImageBack {
    if (!_profileImageBack) {
        _profileImageBack = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageBack.image = [UIImage imageNamed:@"profileImageBack_502541@2x.png"];
        _profileImageBack.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageBack;
}

@end