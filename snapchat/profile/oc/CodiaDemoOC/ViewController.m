#import "ViewController.h"
#import "ProfileContainer.h"

@interface ViewController ()

@property (nonatomic, strong) ProfileContainer *mainView;
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, [self statusBarHeight], self.view.bounds.size.width, self.view.bounds.size.height - [self statusBarHeight])];
    [self.view addSubview:self.scrollView];
    self.mainView = [[ProfileContainer alloc]initWithFrame:CGRectMake(0, 0, 401, 858)];
    self.scrollView.contentSize = [self fitScreen:self.mainView];
    [self.scrollView addSubview:self.mainView];
}


- (CGFloat)statusBarHeight {
    UIWindowScene *windowScene = (UIWindowScene*)[[UIApplication sharedApplication].connectedScenes anyObject];
    return windowScene.statusBarManager.statusBarFrame.size.height;
}

- (CGSize)fitScreen:(UIView *)view {
    CGFloat width = view.frame.size.width;
    CGFloat screenWidth = [UIScreen mainScreen].bounds.size.width;
    if (@available(iOS 16.0, *)) {
        view.anchorPoint = CGPointMake((width / screenWidth) / 2 , (width / screenWidth) / 2);
    } else {
        view.layer.anchorPoint = CGPointMake((width / screenWidth) / 2 , (width / screenWidth) / 2);
    }
    view.transform = CGAffineTransformMakeScale(screenWidth / width, screenWidth / width);
    return CGSizeMake(screenWidth, view.frame.size.height);
}

@end 
