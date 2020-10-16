//
//  TestVC.h
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTableViewVC.h"
#import "TestView.h"
#import "TestService.h"
#import "TestVo.h"
//#import "Test2Service.h"

@interface TestVC : BaseTableViewVC
@property (nonatomic,strong)TestView *testView;
@property (nonatomic,strong)TestService *testService;
@property (nonatomic,strong)TestVo *testVo;
//@property (nonatomic,strong)Test2Service *test2Service;

@end
