//
//  SUScanView.h
//  SeeU
//
//  Created by ozx on 15/9/11.
//  Copyright (c) 2015年 Shiyou Network Technology Co.,Ltd. All rights reserved.
//
#define RankingList_All    @"all"
#define RankingList_Season @"quarter"
#define RankingList_Month  @"month"
#define RankingList_Week   @"week"
#import <UIKit/UIKit.h>

@interface SUScanView : UIView

@property(nonatomic,assign) id delegate;
- (instancetype)initWithDelegate:(id)delegate;

@end
@protocol SUScanViewDelegate <NSObject>

@optional
/**
 *  SUScanViewDelegate Method
 *
 *  @param scanView
 *  @param index
 */
-(void)SUScanView:(SUScanView *)scanView ActionAtStr:(NSString *)listStr;
@end
