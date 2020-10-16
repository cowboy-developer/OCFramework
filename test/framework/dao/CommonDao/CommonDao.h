//
//  CommonDao.h
//  test
//
//  Created by wujun on 2020/2/17.
//  Copyright © 2020 melon. All rights reserved.
//
#import <Foundation/Foundation.h>

#import "CoreDao.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommonDao : CoreDao
+ (BOOL) createTableIfNotExists:(NSString *)tableName createTableSQL:(NSString *) createTableSQL;

@end

NS_ASSUME_NONNULL_END
