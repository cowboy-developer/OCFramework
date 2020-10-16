//
//  BaseTableViewDao.m
//  test
//
//  Created by admin on 2018/6/30.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTableViewDao.h"

@implementation BaseTableViewDao
- (instancetype)init{
    self = [super init];
    if (self) {
        [self dropModuleTables];
        [self createModuleTables];
    }
    return self;
}
-(void)createModuleTables{
    
}
-(void) dropModuleTables{
}
@end
