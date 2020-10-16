//
//  JLLifeServiceService.m
//  test
//
//  Created by admin on 2018/7/7.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "JLLifeServiceService.h"
#import "BaseTableCellVo.h"
#import "YYCreator.h"
@implementation JLLifeServiceService
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(void) initDao{
    if (self.lifeServiceDao == nil) {
        self.lifeServiceDao = [[JLLifeServiceDao alloc]init];
    }
}
-(BaseTemplateDao *)getBaseTemplateDao{
    return self.lifeServiceDao;
}

-(NSString *)getJsonName{
    return @"result";
}

-(NSString *)getJsonListName{
    return @"result";
}

-(NSMutableArray *)getInfoArray:(NSMutableDictionary *) dic{
    NSMutableDictionary *collectDataDic = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *iconDic0 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_phoneTopup.png",@"iconKey",@"手机充值",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_addoil_card.png",@"iconKey",@"购买加油卡",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic2 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_buyoil_card.png",@"iconKey",@"充值加油卡",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_phoneTopup.png",@"iconKey",@"充值加油卡",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_phoneTopup.png",@"iconKey",@"充值加油卡",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_phoneTopup.png",@"iconKey",@"充值加油卡",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic6 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_phoneTopup.png",@"iconKey",@"充值加油卡",@"bottomTitleKey", nil];
    
    NSMutableArray *collectData1Array = [NSMutableArray arrayWithObjects:iconDic0,iconDic1,iconDic2,iconDic3,iconDic4,iconDic5,iconDic6, nil];
    [collectDataDic setObject:collectData1Array forKey:@"row1Key"];
    
    NSMutableDictionary *iconDic7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_carTicket.png",@"iconKey",@"汽车票",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic8 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_trainTicket.png",@"iconKey",@"充火车票",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic9 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_planTicket",@"iconKey",@"充飞机票",@"bottomTitleKey", nil];
    NSMutableArray *collectData2Array = [NSMutableArray arrayWithObjects:iconDic7,iconDic8,iconDic9, nil];
    [collectDataDic setObject:collectData2Array forKey:@"row2Key"];

    NSMutableDictionary *iconDic10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_payMoney.png",@"iconKey",@"充水电煤缴费",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic11 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_TVpayMoney.png",@"iconKey",@"充有线电视缴费",@"bottomTitleKey", nil];
    NSMutableDictionary *iconDic12 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"icon_eduationPay.png",@"iconKey",@"充教育缴费",@"bottomTitleKey", nil];
    NSMutableArray *collectData3Array = [NSMutableArray arrayWithObjects:iconDic10,iconDic11,iconDic12, nil];
    [collectDataDic setObject:collectData3Array forKey:@"row3Key"];
    
    NSLog(@"collectDataDic:%@",collectDataDic);
    NSMutableArray *reArray=[[NSMutableArray alloc] init];
    NSString *TestCell = @"TableCollectViewCell";
    [reArray addObject:[YYCreator createIconCellVo:TestCell cellIcon:@"日期" cellLabel:@"日期" cellValue:@"便民便利" dbDic:collectDataDic]];
    [reArray addObject:[YYCreator createIconCellVo:TestCell cellIcon:@"日期" cellLabel:@"日期" cellValue:@"旅行票务" dbDic:collectDataDic]];
    [reArray addObject:[YYCreator createIconCellVo:TestCell cellIcon:@"日期" cellLabel:@"日期" cellValue:@"账单缴费" dbDic:collectDataDic]];
    return reArray;
}

@end
