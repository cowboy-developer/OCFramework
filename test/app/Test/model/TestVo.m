//
//  TestVo.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "TestVo.h"

@implementation TestVo
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
        self.testService = [[TestService alloc] init];
        self.infoArrray =  [self.testService getInfoArray:dic];
//        NSLog(@"infoArrray:%lu",(unsigned long)self.infoArrray.count);
        [self reloadDataArray];
    }
    return self;
}
-(void) reloadDataArray{
    int totalCount = [CommonUtil getArrayCount:self.infoArrray];
    self.dataArray = nil;
    self.dataArray = [[NSMutableArray alloc] initWithCapacity:totalCount];
    [CommonUtil addDataToNSMutableArray:self.dataArray inArray:self.infoArrray];
    NSLog(@"dataArray:%lu",(unsigned long)self.dataArray.count);
}
@end
