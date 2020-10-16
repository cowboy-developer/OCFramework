//
//  YYCreator.h
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseTableCellVo.h"
#import "TableCollectViewCell.h"
@interface YYCreator : NSObject
+  (BaseTableCellVo *) createIconCellVo:(NSString*) cellName cellIcon:(NSString *) cellIcon cellLabel:(NSString *) cellLabel cellValue:(NSString *)cellValue dbDic:(NSMutableDictionary *) dbDic;
+  (NSMutableDictionary *) createCommon3LblCellViewMap:(NSString *) lbl1 lbl2:(NSString *) lbl2 lbl3:(NSString *)lbl3;
+ (NSMutableDictionary *)setTableCollectTopMsgLblWith:(TableCollectViewCell *)cell cellDataDic:(NSMutableDictionary *) cellDataDic;
@end
