//
//  SUScanView.m
//  SeeU
//
//  Created by ozx on 15/9/11.
//  Copyright (c) 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.

#import "SUScanView.h"
@interface SUScanView (){
    __weak IBOutlet UIButton *btnAll;
    __weak IBOutlet UIButton *btnSeason;
    __weak IBOutlet UIButton *btnMonth;
    __weak IBOutlet UIButton *btnWeek;
    
}
@property(strong, nonatomic) UIButton *button;
@end
@implementation SUScanView

- (instancetype)init{
    if (self = [super init]) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"SUScanView" owner:self options:nil];
        //得到第一个UIView
        self = [nib objectAtIndex:0];
    }
    return self;
}
- (void)layoutSubviews{
    
    [super layoutSubviews];
}
- (instancetype)initWithDelegate:(id)delegate{
    if (self = [super init]) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"SUScanView" owner:self options:nil];
        //得到第一个UIView
        self = [nib objectAtIndex:0];
        self.delegate = delegate;
        [self setButton];
        
    }
    return self;
}
-(void)setButton{
    [btnAll setImage:[UIImage imageNamed:@"btn_manAndWoman_ScanCheck"] forState:UIControlStateSelected];
    [btnSeason setImage:[UIImage imageNamed:@"btn_manAndWoman_ScanCheck"] forState:UIControlStateSelected];
    [btnMonth setImage:[UIImage imageNamed:@"btn_manAndWoman_ScanCheck"] forState:UIControlStateSelected];
    [btnWeek setImage:[UIImage imageNamed:@"btn_manAndWoman_ScanCheck"] forState:UIControlStateSelected];
    [btnAll setSelected:YES];
    _button = btnAll;
}

- (IBAction)btnAction:(id)sender {
    UIButton *btn = (UIButton *)sender;
    NSString *str = RankingList_All;
    _button.selected = NO;
    _button = btn;
    _button.selected = YES;
    if([btn isEqual:btnAll]){NSLog(@"总排行");str = RankingList_All;}
    else if([btn isEqual:btnSeason]){NSLog(@"季排行");str = RankingList_Season;}
    else if([btn isEqual:btnMonth]){NSLog(@"月排行");str = RankingList_Month;}
    else if([btn isEqual:btnWeek]){NSLog(@"周排行");str = RankingList_Week;}
    [self.delegate SUScanView:self ActionAtStr:str];
}



@end
