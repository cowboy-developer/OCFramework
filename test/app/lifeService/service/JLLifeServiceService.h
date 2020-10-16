//
//  JLLifeServiceService.h
//  test
//
//  Created by admin on 2018/7/7.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTableViewService.h"
#import "JLLifeServiceDao.h"
@interface JLLifeServiceService : BaseTableViewService
@property (nonatomic,strong)JLLifeServiceDao *lifeServiceDao;
-(NSMutableArray *)getInfoArray:(NSMutableDictionary *) dic;
@end
