//
//  TestService.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "TestService.h"

@implementation TestService

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

-(NSMutableArray *)getInfoArray:(NSMutableDictionary *) dic{
//    NSMutableArray *customerProductList = [[dic objectForKey:@"result"] objectForKey:@"customerProductList"];
    NSArray *list = [CWSqliteModelTool queryAllModels:[TestModelDao class]];
    NSMutableArray *reArray=[[NSMutableArray alloc] init];
    NSString *TestCell = @"testCell";
    for (int i=0; i<[list count]; i++) {
        TestModelDao *model = [list objectAtIndex:i];
//        NSString *lbl3String = [NSString stringWithFormat:@"%@%@",[CommonUtil nullToNSString:[dic objectForKey:@"packageMultipleQty"]],[CommonUtil nullToNSString:[dic  objectForKey:@"packageMultipleUnit"]]];
//        NSString *lbl2String =[NSString stringWithFormat:@"1%@",[CommonUtil nullToNSString:[dic objectForKey:@"unit"]]];
        BaseTableCellVo *reCellVo1  =[YYCreator createIconCellVo:TestCell cellIcon:@"日期" cellLabel:model.name cellValue:model.headimg dbDic:[[NSMutableDictionary alloc]init]];
//        reCellVo1.cellKey = [dic objectForKey:@"productName"];
        [reArray addObject:reCellVo1];
    }
    
    return reArray;
}


-(void)saveURLDic:(NSDictionary *)URLDic{
    TestModelDao *modelDao = [[TestModelDao alloc]init];
    NSMutableArray *modelArr = [modelDao getGroupModels:URLDic];
    BOOL _result = [CWSqliteModelTool insertOrUpdateModels:modelArr];
    NSLog(@"_result:%d",_result);
}

-(void)getData{
    NSArray *result = [CWSqliteModelTool queryAllModels:[TestModelDao class]];
    NSLog(@"_result--->:%@",result);
}
@end
