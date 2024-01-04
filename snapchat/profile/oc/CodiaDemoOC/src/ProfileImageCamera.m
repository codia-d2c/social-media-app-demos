//
//  ProfileImageCamera.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileImageCamera.h"
#import "ProfileImageCameraModel.h"
#import <UIKit/UIImageView.h>

@interface ProfileImageCamera ()

/// UIImageView: Oval
@property (nonatomic, strong) UIImageView *imageView1;
/// UIImageView: Oval
@property (nonatomic, strong) UIImageView *imageView2;
/// UIImageView: Oval
@property (nonatomic, strong) UIImageView *imageView3;
@property (nonatomic, strong) ProfileImageCameraModel *model;

@end

@implementation ProfileImageCamera

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

- (void)bindModel:(id)model {
    if(![model isKindOfClass:[ProfileImageCameraModel class]]) {
      return;
    }
    self.model = model;
    self.imageView1.image = [UIImage imageNamed:self.model.imageView1Path];
    self.imageView2.image = [UIImage imageNamed:self.model.imageView2Path];
    self.imageView3.image = [UIImage imageNamed:self.model.imageView3Path];
}


- (void)setupSubviews {
    [self addSubview:self.imageView1];
    [self addSubview:self.imageView2];
    [self addSubview:self.imageView3];
}

- (void)setupConstraints {
    [self.imageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left);
        make.width.mas_equalTo(18);
        make.top.equalTo(self.mas_top);
        make.height.mas_equalTo(18);
    }];

    [self.imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(3.38);
        make.width.mas_equalTo(11.25);
        make.top.equalTo(self.mas_top).offset(3.38);
        make.height.mas_equalTo(11.25);
    }];

    [self.imageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imageView2.mas_left).offset(4.5);
        make.width.mas_equalTo(2.25);
        make.top.equalTo(self.imageView2.mas_top).offset(2.25);
        make.height.mas_equalTo(2.25);
    }];
}




- (UIImageView *)imageView1 {
    if (!_imageView1) {
        _imageView1 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView1.image = [UIImage imageNamed:@"imageView1_6303@2x.png"];
        _imageView1.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _imageView1;
}

- (UIImageView *)imageView2 {
    if (!_imageView2) {
        _imageView2 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView2.image = [UIImage imageNamed:@"imageView2_6304@2x.png"];
        _imageView2.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _imageView2;
}

- (UIImageView *)imageView3 {
    if (!_imageView3) {
        _imageView3 = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView3.image = [UIImage imageNamed:@"imageView3_6305@2x.png"];
        _imageView3.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _imageView3;
}

@end