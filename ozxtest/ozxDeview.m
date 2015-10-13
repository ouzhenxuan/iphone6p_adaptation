//
//  ozxDeview.m
//  ozxtest
//
//  Created by 区振轩 on 15/10/9.
//  Copyright © 2015年 区振轩. All rights reserved.
//

#import "ozxDeview.h"

@implementation ozxDeview

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init{
    if (self = [super init]) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"ozxDeview" owner:self options:nil];
        //得到第一个UIView
        self = [nib objectAtIndex:0];
    }
    return self;
}


@end
