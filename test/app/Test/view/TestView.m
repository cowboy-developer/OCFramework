//
//  TestView.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "TestView.h"
#define BASE_WIDTH    ([UIScreen mainScreen].bounds.size.width)       //屏幕宽度
#define BASE_HEIGHT   ([UIScreen mainScreen].bounds.size.height)      //屏幕高度
@implementation TestView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.baseTableView.frame = CGRectMake(0, 64, BASE_WIDTH, BASE_HEIGHT-64);
//    self.baseTableView.backgroundColor = [UIColor blueColor];
}
-(void) reloadOtherViewsByVo:(BaseTableViewVo *)baseTableViewVo{
    NSLog(@"reloadOtherViewsByVo");
//    LoadingVo *loadingVo = (LoadingVo *) baseTableViewVo;
//    [self.bottomView reloadByVo:loadingVo.baseBottomVo];
}
@end
