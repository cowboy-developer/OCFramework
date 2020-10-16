//
//  JLLifeServiceVo.h
//  test
//
//  Created by admin on 2018/7/7.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTableViewVo.h"
#import "JLLifeServiceService.h"
@interface JLLifeServiceVo : BaseTableViewVo
- (instancetype)initByDic:(NSMutableDictionary *)dic;
@property (nonatomic,strong)NSMutableArray *cellInfoArray;
@property (nonatomic,strong)JLLifeServiceService *lifeServiceService;
@end
