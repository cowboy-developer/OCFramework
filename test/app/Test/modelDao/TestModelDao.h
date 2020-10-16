//
//  TestModelDao.h
//  test
//
//  Created by wujun on 2020/2/20.
//  Copyright © 2020 melon. All rights reserved.
//

#import "BaseTemplateModelDao.h"
//#import "CWTestModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestModelDao : BaseTemplateModelDao
@property (nonatomic,assign) int CWTestModelId; // primaryKey

//@property (nonatomic,copy) NSString *description;
@property (nonatomic,copy) NSString *headimg;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *people_id;

@end

NS_ASSUME_NONNULL_END
