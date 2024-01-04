//
//  ProfileImageBattery.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileImageBattery.h"
#import <UIKit/UIImageView.h>

@interface ProfileImageBattery ()

/// UIImageView: Vector
@property (nonatomic, strong) UIImageView *imageView4;
/// UIImageView: Vector
@property (nonatomic, strong) UIImageView *imageView5;

@end

@implementation ProfileImageBattery

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
    [self addSubview:self.imageView4];
    [self addSubview:self.imageView5];
}

- (void)setupConstraints {
    [self.imageView4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(6);
        make.width.mas_equalTo(8);
        make.bottom.equalTo(self.mas_bottom).offset(-2);
        make.height.mas_equalTo(16);
    }];

    [self.imageView5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageView4.mas_left);
        make.width.mas_equalTo(8);
        make.bottom.equalTo(self.imageView4.mas_bottom);
        make.height.mas_equalTo(11);
    }];
}




- (UIImageView *)imageView4 {
    if (!_imageView4) {
        _imageView4 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView4.image = [UIImage imageNamed:@"imageView4_2250@2x.png"];
        _imageView4.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _imageView4;
}

- (UIImageView *)imageView5 {
    if (!_imageView5) {
        _imageView5 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView5.image = [UIImage imageNamed:@"imageView5_2251@2x.png"];
        _imageView5.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _imageView5;
}

@end