//
//  ProfileGroup5.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup5.h"
#import <UIKit/UIImageView.h>

@interface ProfileGroup5 ()

/// UIImageView: camera
@property (nonatomic, strong) UIImageView *profileCamera;
@property (nonatomic, strong) UILabel *profileTextAddStory;
/// UIImageView: menu-R
@property (nonatomic, strong) UIImageView *profileImageMenu;

@end

@implementation ProfileGroup5

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
    [self addSubview:self.profileCamera];
    [self addSubview:self.profileTextAddStory];
    [self addSubview:self.profileImageMenu];
}

- (void)setupConstraints {
    [self.profileCamera mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(14);
        make.width.mas_equalTo(25);
        make.top.equalTo(self.mas_top).offset(14);
        make.height.mas_equalTo(22.5);
    }];

    [self.profileTextAddStory mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileCamera.mas_right).offset(13);
        make.width.mas_equalTo(250);
        make.centerY.equalTo(self.profileCamera.mas_centerY).offset(0);
    }];

    [self.profileImageMenu mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextAddStory.mas_right).offset(9);
        make.width.mas_equalTo(24);
        make.top.equalTo(self.profileCamera.mas_top);
        make.height.mas_equalTo(24);
    }];
}




- (UIImageView *)profileCamera {
    if (!_profileCamera) {
        _profileCamera = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileCamera.image = [UIImage imageNamed:@"profileCamera_2421@2x.png"];
        _profileCamera.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileCamera;
}

- (UILabel *)profileTextAddStory {
    if (!_profileTextAddStory) {
        _profileTextAddStory = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextAddStory.text = @"Add to My Story";
        _profileTextAddStory.textAlignment = NSTextAlignmentLeft;
        _profileTextAddStory.font = [UIFont fontWithName:@"Calibri" size:15] ?: [UIFont systemFontOfSize:15];
        _profileTextAddStory.numberOfLines = 1;
        _profileTextAddStory.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextAddStory;
}

- (UIImageView *)profileImageMenu {
    if (!_profileImageMenu) {
        _profileImageMenu = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageMenu.image = [UIImage imageNamed:@"profileImageMenu_502526@2x.png"];
        _profileImageMenu.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageMenu;
}

@end