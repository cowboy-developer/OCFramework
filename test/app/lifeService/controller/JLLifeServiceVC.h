//
//  JLLifeServiceVC.h
//  test
//
//  Created by admin on 2018/7/7.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTableViewVC.h"
#import "JLLifeServiceView.h"
#import "JLLifeServiceVo.h"
#import "JLLifeServiceService.h"
#import "JLLifeServiceDao.h"

@interface JLLifeServiceVC : BaseTableViewVC
@property (nonatomic,strong)JLLifeServiceView *lifeServiceView;
@property (nonatomic,strong)JLLifeServiceVo *lifeServiceVo;
@property (nonatomic,strong)JLLifeServiceService *lifeServiceService;
@property (nonatomic,strong)JLLifeServiceDao *lifeServiceDao;
@end
