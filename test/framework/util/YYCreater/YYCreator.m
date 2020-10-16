//
//  YYCreator.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "YYCreator.h"

@implementation YYCreator
+  (BaseTableCellVo *) createIconCellVo:(NSString*) cellName cellIcon:(NSString *) cellIcon cellLabel:(NSString *) cellLabel cellValue:(NSString *)cellValue dbDic:(NSMutableDictionary *) dbDic
{
    NSMutableDictionary *cellVoDic = [YYCreator createIconCellViewMap:cellIcon cellLabel:cellLabel cellValue:cellValue];
    BaseTableCellVo *cellVo = [[BaseTableCellVo alloc] init:cellName cellDataDic:cellVoDic dbDic:dbDic];
    return cellVo;
}
+  (NSMutableDictionary *) createIconCellViewMap:(NSString *) cellIcon cellLabel:(NSString *) cellLabel cellValue:(NSString *)cellValue
{
    NSMutableDictionary *hallMap = [[NSMutableDictionary alloc] init];
    [hallMap setValue:cellIcon forKey:@"cellIcon"  ];
    [hallMap setValue:cellLabel  forKey:@"cellLabel" ];
    [hallMap setValue:cellValue  forKey:@"cellValue" ];
    return hallMap;
}
+  (NSMutableDictionary *) createCommon3LblCellViewMap:(NSString *) lbl1 lbl2:(NSString *) lbl2 lbl3:(NSString *)lbl3
{
    NSMutableDictionary *hallMap = [[NSMutableDictionary alloc] init];
    [hallMap setValue:lbl1  forKey:@"lbl1" ];
    [hallMap setValue:lbl2  forKey:@"lbl2" ];
    [hallMap setValue:lbl3  forKey:@"lbl3" ];
    return hallMap;
}

+ (NSMutableDictionary *)setTableCollectTopMsgLblWith:(TableCollectViewCell *)cell cellDataDic:(NSMutableDictionary *) cellDataDic{
    NSMutableDictionary *hallMap = [[NSMutableDictionary alloc] init];
    cell.topMsglbl.text = [cellDataDic objectForKey:@"cellValue"];
    return hallMap;
}

@end
