//
//  JLLifeServiceVo.m
//  test
//
//  Created by admin on 2018/7/7.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "JLLifeServiceVo.h"
#import "CommonUtil.h"
@implementation JLLifeServiceVo
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (instancetype)initByDic:(NSMutableDictionary *)dic{
    self = [super init];
    if (self) {
        
        self.lifeServiceService = [[JLLifeServiceService alloc] init];
        self.cellInfoArray =  [self.lifeServiceService getInfoArray:dic];
        NSLog(@"cellInfoArray:%lu",(unsigned long)self.cellInfoArray.count);
        [self reloadDataArray];
    }
    return self;
}
-(void) reloadDataArray{
    int totalCount = [CommonUtil getArrayCount:self.cellInfoArray];
    self.dataArray = nil;
    self.dataArray = [[NSMutableArray alloc] initWithCapacity:totalCount];
    [CommonUtil addDataToNSMutableArray:self.dataArray inArray:self.cellInfoArray];
    NSLog(@"dataArray:%lu",(unsigned long)self.dataArray.count);
    
}
@end
