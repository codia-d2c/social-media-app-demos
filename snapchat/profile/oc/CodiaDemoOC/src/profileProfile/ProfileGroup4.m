//
//  ProfileGroup4.m
//
//  Created by codia-figma
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import "ProfileGroup4.h"
#import <UIKit/UIImageView.h>

@interface ProfileGroup4 ()

@property (nonatomic, strong) UILabel *profileTextPrivateStory;
/// UIImageView: add 
@property (nonatomic, strong) UIImageView *profileImageAdd;

@end

@implementation ProfileGroup4

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:0.77 green:0.77 blue:0.77 alpha:0.41];
        self.layer.cornerRadius = 10;
        [self setupSubviews];
        [self setupConstraints];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
}


- (void)setupSubviews {
    [self addSubview:self.profileImageAdd];
    [self addSubview:self.profileTextPrivateStory];
}

- (void)setupConstraints {
    [self.profileTextPrivateStory mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(1);
        make.width.mas_equalTo(60);
        make.centerY.equalTo(self.mas_top).offset(10);
    }];

    [self.profileImageAdd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.profileTextPrivateStory.mas_left).offset(-3);
        make.width.mas_equalTo(8);
        make.centerY.equalTo(self.profileTextPrivateStory.mas_centerY);
        make.height.mas_equalTo(8);
    }];
}




- (UILabel *)profileTextPrivateStory {
    if (!_profileTextPrivateStory) {
        _profileTextPrivateStory = [[UILabel alloc] initWithFrame:CGRectZero];
        _profileTextPrivateStory.text = @"Private Story";
        _profileTextPrivateStory.textAlignment = NSTextAlignmentLeft;
        _profileTextPrivateStory.font = [UIFont fontWithName:@"Calibri-Bold" size:10] ?: [UIFont systemFontOfSize:10];
        _profileTextPrivateStory.numberOfLines = 1;
        _profileTextPrivateStory.textColor = [UIColor colorWithRed:0.34 green:0.34 blue:0.34 alpha:1.00];
    }
    return _profileTextPrivateStory;
}

- (UIImageView *)profileImageAdd {
    if (!_profileImageAdd) {
        _profileImageAdd = [[UIImageView alloc] initWithFrame:CGRectZero];
        _profileImageAdd.image = [UIImage imageNamed:@"profileImageAdd_2412@2x.png"];
        _profileImageAdd.contentMode = UIViewContentModeScaleAspectFit;
    }
     return _profileImageAdd;
}

@end