//
//  ProfileImageNetwork.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileImageNetwork.h"

@interface ProfileImageNetwork ()

/// background view
@property (nonatomic, strong) UIView *customView1;
/// background view
@property (nonatomic, strong) UIView *customView2;
/// background view
@property (nonatomic, strong) UIView *customView3;
/// background view
@property (nonatomic, strong) UIView *customView4;

@end

@implementation ProfileImageNetwork

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
    [self addSubview:self.customView1];
    [self addSubview:self.customView4];
    [self addSubview:self.customView3];
    [self addSubview:self.customView2];
}

- (void)setupConstraints {
    [self.customView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(4);
        make.bottom.equalTo(self.mas_bottom).offset(-2);
        make.height.mas_equalTo(16);
    }];

    [self.customView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(4);
        make.bottom.equalTo(self.customView1.mas_bottom);
        make.height.mas_equalTo(4);
    }];

    [self.customView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.customView1.mas_right).offset(2);
        make.width.mas_equalTo(4);
        make.bottom.equalTo(self.customView1.mas_bottom);
        make.height.mas_equalTo(8);
    }];

    [self.customView4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.customView3.mas_right).offset(2);
        make.width.mas_equalTo(4);
        make.bottom.equalTo(self.customView1.mas_bottom);
        make.height.mas_equalTo(12);
    }];
}




- (UIView *)customView1 {
    if (!_customView1) {
        _customView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 4, 16)];
        _customView1.backgroundColor = [UIColor colorWithRed:0.77 green:0.77 blue:0.77 alpha:0.41];
    }
    return _customView1;
}

- (UIView *)customView2 {
    if (!_customView2) {
        _customView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 4, 4)];
        _customView2.backgroundColor = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
    }
    return _customView2;
}

- (UIView *)customView3 {
    if (!_customView3) {
        _customView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 4, 8)];
        _customView3.backgroundColor = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
    }
    return _customView3;
}

- (UIView *)customView4 {
    if (!_customView4) {
        _customView4 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 4, 12)];
        _customView4.backgroundColor = [UIColor colorWithRed:1.00 green:1.00 blue:1.00 alpha:1.00];
    }
    return _customView4;
}

@end