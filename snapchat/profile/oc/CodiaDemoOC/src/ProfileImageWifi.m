//
//  ProfileImageWifi.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileImageWifi.h"
#import <UIKit/UIImageView.h>

@interface ProfileImageWifi ()

/// UIImageView: Vector
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ProfileImageWifi

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
    [self addSubview:self.imageView];
}

- (void)setupConstraints {
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(-0.83);
        make.width.mas_equalTo(18.33);
        make.bottom.equalTo(self.mas_bottom).offset(-3.33);
        make.height.mas_equalTo(12.96);
    }];
}




- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView.image = [UIImage imageNamed:@"imageView_2259@2x.png"];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _imageView;
}

@end