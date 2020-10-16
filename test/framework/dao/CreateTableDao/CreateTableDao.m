//
//  CreateTableDao.m
//  test
//
//  Created by wujun on 2020/2/17.
//  Copyright © 2020 melon. All rights reserved.
//

#import "CreateTableDao.h"
//#import "TestDao.h"
//#import "Test2Dao.h"

@implementation CreateTableDao
- (instancetype)init
{
    self = [super init];
//    self.timeTypeService = [[TimeTypeService alloc] init];
//    self.custTypeService = [[CustTypeService alloc] init];
    
    
//    [self dropModuleTables];
    [self createModuleTables];
    
    
//    [self createSystemTables];
    return self;
}

-(void)createModuleTables{
}

-(void)createSystemTables{
    
}

-(void) dropSystemTables{
    
}

@end
