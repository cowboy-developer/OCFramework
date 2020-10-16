//
//  JLLifeServiceView.m
//  test
//
//  Created by admin on 2018/7/7.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "JLLifeServiceView.h"

@implementation JLLifeServiceView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.baseTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.baseTableView.frame = CGRectMake(0, 64, BASE_WIDTH, BASE_HEIGHT-64);
    self.baseTableView.backgroundColor = [UIColor blueColor];
}
-(void) reloadOtherViewsByVo:(BaseTableViewVo *)baseTableViewVo{
    NSLog(@"reloadOtherViewsByVo");
    //    LoadingVo *loadingVo = (LoadingVo *) baseTableViewVo;
    //    [self.bottomView reloadByVo:loadingVo.baseBottomVo];
}

@end
