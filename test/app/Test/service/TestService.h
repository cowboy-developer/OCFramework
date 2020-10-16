//
//  TestService.h
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTableViewService.h"
#import "BaseTableCellVo.h"
#import "YYCreator.h"
#import "CommonUtil.h"
//#import "CustomerOrderService.h"
//#import "CustomerOrderDao.h"
//#import "CustomerProductListService.h"
//#import "CustomerProductListDao.h"
//#import "CustomerProductMaterialListService.h"
//#import "CustomerProductMaterialListDao.h"

//#import "TestDao.h"

#import "CWSqliteModelTool.h"
#import "TestModelDao.h"


@interface TestService : BaseTableViewService
-(NSMutableArray *)getInfoArray:(NSMutableDictionary *) dic;
-(void)saveURLDic:(NSDictionary *)URLDic;

-(void)getData;

//@property (nonatomic,strong)CWSqliteModelTool *cwsqliteModelTool;
//-(void)saveModelArr:(NSMutableArray *)modelArr;

@property (nonatomic,strong)TestModelDao *testModelDao;
@end
