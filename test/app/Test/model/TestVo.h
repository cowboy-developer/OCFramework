//
//  TestVo.h
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTableViewVo.h"
#import "TestService.h"

@interface TestVo : BaseTableViewVo
- (instancetype)initByDic:(NSMutableDictionary *)dic;
@property (nonatomic,strong)TestService *testService;
@property (nonatomic,strong) NSMutableArray *infoArrray;

@end
