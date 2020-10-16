//
//  CreateTableDao.h
//  test
//
//  Created by wujun on 2020/2/17.
//  Copyright © 2020 melon. All rights reserved.
//
#import <Foundation/Foundation.h>

#import "CoreDao.h"
#import "sqlite3.h"

NS_ASSUME_NONNULL_BEGIN

@interface CreateTableDao : CoreDao
-(void) createSystemTables;
-(void)createModuleTables;
@end

NS_ASSUME_NONNULL_END
