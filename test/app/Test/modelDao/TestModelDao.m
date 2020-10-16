//
//  TestModelDao.m
//  test
//
//  Created by wujun on 2020/2/20.
//  Copyright © 2020 melon. All rights reserved.
//

#import "TestModelDao.h"

@implementation TestModelDao
//这里json转模型可以用KVC或者是MJExtension实现，这样 不好.
- (NSMutableArray *)getGroupModels:(NSDictionary *)requestDic{
    NSDictionary *data = [requestDic objectForKey:@"data"];
    NSArray *list = [data objectForKey:@"list"];
    NSMutableArray *modelArray = [[NSMutableArray alloc]init];
    for (int i = 0; i<list.count; i++) {
        NSMutableDictionary *dic = list[i];
        TestModelDao *model = [[TestModelDao alloc]init];
        model.CWTestModelId = i;
//        model.description = [dic objectForKey:@"description"];
        model.headimg = [dic objectForKey:@"headimg"];
        model.name = [dic objectForKey:@"name"];
        model.people_id = [dic objectForKey:@"id"];
        [modelArray addObject:model];
    }
 return modelArray;
}

// 以CWTestModelId为主键返回！
+ (NSString *)primaryKey {
   return @"CWTestModelId";
}

@end
