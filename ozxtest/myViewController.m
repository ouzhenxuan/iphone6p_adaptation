//
//  myViewController.m
//  ozxtest
//
//  Created by 区振轩 on 15/10/9.
//  Copyright © 2015年 区振轩. All rights reserved.
//
#define  DEVICE_WIDTH [UIScreen mainScreen].bounds.size.width
#import "myViewController.h"
#import "ozxDeview.h"

@interface myViewController ()
{
    CGFloat navH;
    CGFloat scanViewH;
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

    oview = [[ozxDeview alloc] init];
    oview.frame = CGRectMake(0, 64, 100, 100);
    [self.view addSubview:oview];
    
}

-(void)viewWillLayoutSubviews{

    [super viewWillLayoutSubviews];
    
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
