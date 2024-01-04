//
//  ProfileGroup6.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup6.h"
#import <UIKit/UIImageView.h>

@interface ProfileGroup6 ()

/// UIImageView: camera
@property (nonatomic, strong) UIImageView *profileCamera1;
@property (nonatomic, strong) UILabel *profileTextAddOurStory;
/// UIImageView: menu-R
@property (nonatomic, strong) UIImageView *profileImageMenu1;

@end

@implementation ProfileGroup6

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
    [self addSubview:self.profileCamera1];
    [self addSubview:self.profileTextAddOurStory];
    [self addSubview:self.profileImageMenu1];
}

- (void)setupConstraints {
    [self.profileCamera1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(14);
        make.width.mas_equalTo(25);
        make.top.equalTo(self.mas_top).offset(14);
        make.height.mas_equalTo(22.5);
    }];

    [self.profileTextAddOurStory mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileCamera1.mas_right).offset(13);
        make.width.mas_equalTo(250);
        make.centerY.equalTo(self.profileCamera1.mas_centerY).offset(0);
    }];

    [self.profileImageMenu1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextAddOurStory.mas_right).offset(9);
        make.width.mas_equalTo(24);
        make.top.equalTo(self.profileCamera1.mas_top);
        make.height.mas_equalTo(24);
    }];
}




- (UIImageView *)profileCamera1 {
    if (!_profileCamera1) {
        _profileCamera1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileCamera1.image = [UIImage imageNamed:@"profileCamera1_2430@2x.png"];
        _profileCamera1.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileCamera1;
}

- (UILabel *)profileTextAddOurStory {
    if (!_profileTextAddOurStory) {
        _profileTextAddOurStory = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextAddOurStory.text = @"Add to Our Story";
        _profileTextAddOurStory.textAlignment = NSTextAlignmentLeft;
        _profileTextAddOurStory.font = [UIFont fontWithName:@"Calibri" size:15] ?: [UIFont systemFontOfSize:15];
        _profileTextAddOurStory.numberOfLines = 1;
        _profileTextAddOurStory.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextAddOurStory;
}

- (UIImageView *)profileImageMenu1 {
    if (!_profileImageMenu1) {
        _profileImageMenu1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageMenu1.image = [UIImage imageNamed:@"profileImageMenu1_502534@2x.png"];
        _profileImageMenu1.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageMenu1;
}

@end