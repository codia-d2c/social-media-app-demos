//
//  ProfileGroup9.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup9.h"
#import <UIKit/UIImageView.h>

@interface ProfileGroup9 ()

/// UIImageView: Vector
@property (nonatomic, strong) UIImageView *profileVector1;
@property (nonatomic, strong) UILabel *profileTextChangeOutfit;
/// background view
@property (nonatomic, strong) UIView *profileImageRectangle;
@property (nonatomic, strong) UILabel *profileTextNew;
/// UIImageView: back-R
@property (nonatomic, strong) UIImageView *profileImageBack2;
/// UIImageView: Line 5
@property (nonatomic, strong) UIImageView *profileLine1;
/// UIImageView: Vector
@property (nonatomic, strong) UIImageView *profileVector2;
/// UIImageView: back-R
@property (nonatomic, strong) UIImageView *profileImageBack3;
@property (nonatomic, strong) UILabel *profileTextEditBitmoji;
/// UIImageView: Line 5
@property (nonatomic, strong) UIImageView *profileLine2;

@end

@implementation ProfileGroup9

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
        self.layer.cornerRadius = 10;
        self.layer.shadowOpacity = 1;
        self.layer.shadowRadius = 4;
        self.layer.shadowOffset = CGSizeMake(0, 4);
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
    [self addSubview:self.profileVector1];
    [self addSubview:self.profileTextChangeOutfit];
    [self addSubview:self.profileImageRectangle];
    [self addSubview:self.profileTextNew];
    [self addSubview:self.profileImageBack2];
    [self addSubview:self.profileLine1];
    [self addSubview:self.profileVector2];
    [self addSubview:self.profileTextEditBitmoji];
    [self addSubview:self.profileImageBack3];
    [self addSubview:self.profileLine2];
}

- (void)setupConstraints {
    [self.profileVector1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(11);
        make.width.mas_equalTo(24);
        make.top.equalTo(self.mas_top).offset(15.12);
        make.height.mas_equalTo(21.75);
    }];

    [self.profileTextChangeOutfit mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileVector1.mas_right).offset(17);
        make.width.mas_equalTo(189);
        make.centerY.equalTo(self.profileVector1.mas_centerY).offset(0);
    }];

    [self.profileImageRectangle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextChangeOutfit.mas_right).offset(9);
        make.width.mas_equalTo(32);
        make.top.equalTo(self.profileVector1.mas_top).offset(3.38);
        make.height.mas_equalTo(13.71);
    }];

    [self.profileTextNew mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.profileImageRectangle.mas_right).offset(28);
        make.centerY.equalTo(self.profileVector1.mas_centerY).offset(-1);
    }];

    [self.profileImageBack2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileTextNew.mas_right).offset(9);
        make.width.mas_equalTo(15);
        make.top.equalTo(self.profileImageRectangle.mas_top);
        make.height.mas_equalTo(15);
    }];

    [self.profileLine1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileVector1.mas_bottom).offset(15.12);
        make.height.mas_equalTo(1);
    }];

    [self.profileVector2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.profileVector1.mas_left);
        make.width.mas_equalTo(24);
        make.top.equalTo(self.profileLine1.mas_bottom).offset(13.5);
        make.height.mas_equalTo(24);
    }];

    [self.profileImageBack3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.profileImageBack2.mas_right);
        make.width.mas_equalTo(15);
        make.centerY.equalTo(self.profileVector2.mas_bottom).offset(-11);
        make.height.mas_equalTo(15);
    }];

    [self.profileTextEditBitmoji mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.profileTextNew.mas_right);
        make.width.mas_equalTo(258);
        make.centerY.equalTo(self.profileImageBack3.mas_centerY);
    }];

    [self.profileLine2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.profileLine1.mas_centerX);
        make.width.mas_equalTo(347);
        make.top.equalTo(self.profileVector2.mas_bottom).offset(14.5);
        make.height.mas_equalTo(1);
    }];
}




- (UIImageView *)profileVector1 {
    if (!_profileVector1) {
        _profileVector1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileVector1.image = [UIImage imageNamed:@"profileVector1_2466@2x.png"];
        _profileVector1.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileVector1;
}

- (UILabel *)profileTextChangeOutfit {
    if (!_profileTextChangeOutfit) {
        _profileTextChangeOutfit = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextChangeOutfit.text = @"Change My Outfit";
        _profileTextChangeOutfit.textAlignment = NSTextAlignmentLeft;
        _profileTextChangeOutfit.font = [UIFont fontWithName:@"Calibri" size:15] ?: [UIFont systemFontOfSize:15];
        _profileTextChangeOutfit.numberOfLines = 1;
        _profileTextChangeOutfit.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextChangeOutfit;
}

- (UIView *)profileImageRectangle {
    if (!_profileImageRectangle) {
        _profileImageRectangle = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 32, 13.71)];
        _profileImageRectangle.backgroundColor = [UIColor colorWithRed:0.12 green:0.53 blue:0.90 alpha:1.00];
        _profileImageRectangle.layer.cornerRadius = 2;
    }
    return _profileImageRectangle;
}

- (UILabel *)profileTextNew {
    if (!_profileTextNew) {
        _profileTextNew = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextNew.text = @"NEW";
        _profileTextNew.textAlignment = NSTextAlignmentLeft;
        _profileTextNew.font = [UIFont fontWithName:@"Calibri-Bold" size:11] ?: [UIFont systemFontOfSize:11];
        _profileTextNew.numberOfLines = 1;
        _profileTextNew.textColor = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
    }
    return _profileTextNew;
}

- (UIImageView *)profileImageBack2 {
    if (!_profileImageBack2) {
        _profileImageBack2 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageBack2.image = [UIImage imageNamed:@"profileImageBack2_502555@2x.png"];
        _profileImageBack2.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageBack2;
}

- (UIImageView *)profileLine1 {
    if (!_profileLine1) {
        _profileLine1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileLine1.image = [UIImage imageNamed:@"profileLine1_2472@2x.png"];
        _profileLine1.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileLine1;
}

- (UIImageView *)profileVector2 {
    if (!_profileVector2) {
        _profileVector2 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileVector2.image = [UIImage imageNamed:@"profileVector2_2479@2x.png"];
        _profileVector2.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileVector2;
}

- (UIImageView *)profileImageBack3 {
    if (!_profileImageBack3) {
        _profileImageBack3 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageBack3.image = [UIImage imageNamed:@"profileImageBack3_502562@2x.png"];
        _profileImageBack3.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageBack3;
}

- (UILabel *)profileTextEditBitmoji {
    if (!_profileTextEditBitmoji) {
        _profileTextEditBitmoji = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextEditBitmoji.text = @"Edit my Bitmoji";
        _profileTextEditBitmoji.textAlignment = NSTextAlignmentLeft;
        _profileTextEditBitmoji.font = [UIFont fontWithName:@"Calibri" size:15] ?: [UIFont systemFontOfSize:15];
        _profileTextEditBitmoji.numberOfLines = 1;
        _profileTextEditBitmoji.textColor = [UIColor colorWithRed:0.00 green:0.00 blue:0.00 alpha:1.00];
    }
    return _profileTextEditBitmoji;
}

- (UIImageView *)profileLine2 {
    if (!_profileLine2) {
        _profileLine2 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileLine2.image = [UIImage imageNamed:@"profileLine2_2478@2x.png"];
        _profileLine2.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileLine2;
}

@end