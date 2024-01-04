//
//  ProfileGroup3.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup3.h"
#import <UIKit/UIImageView.h>

@interface ProfileGroup3 ()

/// UIImageView: find friend
@property (nonatomic, strong) UIImageView *profileImageFindFriend;
@property (nonatomic, strong) UILabel *profileTextFindFriends;
@property (nonatomic, strong) UILabel *profileTextSyncContact;
/// UIImageView: Vector
@property (nonatomic, strong) UIImageView *profileVector;

@end

@implementation ProfileGroup3

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
    [self addSubview:self.profileVector];
    [self addSubview:self.profileImageFindFriend];
    [self addSubview:self.profileTextFindFriends];
    [self addSubview:self.profileTextSyncContact];
}

- (void)setupConstraints {
    [self.profileImageFindFriend mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(14);
        make.width.mas_equalTo(18);
        make.top.equalTo(self.mas_top).offset(17);
        make.height.mas_equalTo(18);
    }];

    [self.profileTextFindFriends mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileImageFindFriend.mas_right).offset(20);
        make.centerY.equalTo(self.profileImageFindFriend.mas_top).offset(3);
    }];

    [self.profileTextSyncContact mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextFindFriends.mas_left);
        make.centerY.equalTo(self.profileImageFindFriend.mas_bottom).offset(-0.5);
    }];

    [self.profileVector mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextFindFriends.mas_right).offset(9);
        make.width.mas_equalTo(10.17);
        make.top.equalTo(self.profileTextFindFriends.mas_centerY).offset(1);
        make.height.mas_equalTo(10.17);
    }];
}




- (UIImageView *)profileImageFindFriend {
    if (!_profileImageFindFriend) {
        _profileImageFindFriend = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageFindFriend.image = [UIImage imageNamed:@"profileImageFindFriend_2401@2x.png"];
        _profileImageFindFriend.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageFindFriend;
}

- (UILabel *)profileTextFindFriends {
    if (!_profileTextFindFriends) {
        _profileTextFindFriends = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextFindFriends.text = @"Find friends on Snapchat";
        _profileTextFindFriends.textAlignment = NSTextAlignmentLeft;
        _profileTextFindFriends.font = [UIFont fontWithName:@"Calibri" size:15] ?: [UIFont systemFontOfSize:15];
        _profileTextFindFriends.numberOfLines = 1;
        _profileTextFindFriends.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextFindFriends;
}

- (UILabel *)profileTextSyncContact {
    if (!_profileTextSyncContact) {
        _profileTextSyncContact = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextSyncContact.text = @"Tap to sync your contact";
        _profileTextSyncContact.textAlignment = NSTextAlignmentLeft;
        _profileTextSyncContact.font = [UIFont fontWithName:@"Calibri-Bold" size:12] ?: [UIFont systemFontOfSize:12];
        _profileTextSyncContact.numberOfLines = 1;
        _profileTextSyncContact.textColor = [UIColor colorWithRed:0.77 green:0.77 blue:0.77 alpha:1.00];
    }
    return _profileTextSyncContact;
}

- (UIImageView *)profileVector {
    if (!_profileVector) {
        _profileVector = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileVector.image = [UIImage imageNamed:@"profileVector_2399@2x.png"];
        _profileVector.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileVector;
}

@end