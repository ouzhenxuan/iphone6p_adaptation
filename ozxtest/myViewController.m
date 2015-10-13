//
//  myViewController.m
//  ozxtest
//
//  Created by 区振轩 on 15/10/9.
//  Copyright © 2015年 区振轩. All rights reserved.
//
#define  DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#import "myViewController.h"
#import "SUScanView.h"
#import "ozxDeview.h"

@interface myViewController ()
{
    CGFloat navH;
    CGFloat scanViewH;
    SUScanView * scanView;
    ozxDeview * oview ;
}
@property (nonatomic,strong) UIButton * btn1;
@property (nonatomic,strong) UIButton * btn2;

@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    navH = 64;
    scanViewH = 120;
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 300, 400, 44)];
    [self.view addSubview: view];
    view.backgroundColor = [UIColor redColor];
    
    oview = [[ozxDeview alloc] init];

    [self.view addSubview:oview];
    
}


#pragma mark - 设置月排行
- (void)setTheScanView{
    scanView = [[SUScanView alloc] initWithDelegate:self];
    scanView.frame = CGRectMake(DEVICE_WIDTH-80, navH, 84, scanViewH);
    [self.view addSubview:scanView];
//    [self.view bringSubviewToFront:_headPlaygroundview];
//    [self.view bringSubviewToFront:_headView];
    
}

-(void)viewWillLayoutSubviews{

    [super viewWillLayoutSubviews];
    oview.frame = CGRectMake(0, 64, 100, 100);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
