//
//  TestVC.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "TestVC.h"
#import "TestCell.h"
#import "JLLifeServiceVC.h"
#import <CWSqliteModelTool.h>

#define BASE_WIDTH    ([UIScreen mainScreen].bounds.size.width)       //屏幕宽度
#define BASE_HEIGHT   ([UIScreen mainScreen].bounds.size.height)      //屏幕高度

@interface TestVC ()

@end

@implementation TestVC

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

-(BaseTableView *) getBaseTableView{
    return self.testView;
}

-(void) initBaseView{

    self.testView = [[TestView alloc] initWithFrame:CGRectMake(0, 0, BASE_WIDTH, BASE_HEIGHT)];
    self.testView.baseTableView.layer.borderWidth = 0.5;
    self.testView.baseTableView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.testView.baseTableView.layer.masksToBounds = YES;
    [super initBaseView:self.testView];
    
    NSString *url = @"http://onapp.yahibo.top/public/?s=api/test/list";

    [self requestWithURL:url withParameter:nil];
}

- (void)handleRequestWithURLSuccess:(id)url{
    
    NSLog(@"requestWithURLDic:%@",self.requestWithURLDic);
    //CWSqlite数据库
    //1,批量添加时候的primaryKey 对应的id一定要用for循环的i去赋值。2,模型对应的属性字段一定要和json返回的字段一致，不然会报错.
    
    [self.testService saveURLDic:self.requestWithURLDic];
    NSLog(@"------SqliteDBPath:%@",NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject);
//    [self.testService getData];
    self.testVo = [[TestVo alloc]initByDic:[[NSMutableDictionary alloc]initWithDictionary:self.requestWithURLDic]];
    [self.testView reloadView:self.testVo];
    
    /*
     modelDao:都用CWSqlite，当成模型来使用，同时也做数据库
     controller:
     view:
     vo:处理数据逻辑，和viewModel功能差不多.可以用viewModel名称代替vo名字
     service:继续以前的模块管理,作为一个中间件，把数据插入数据库，把数据取出来。
     */
    
}

- (void)initService;{
    self.testService = [[TestService alloc] init];
}
- (void)initBaseVo{
    self.testVo = [[TestVo alloc] init];
}
-(BaseTemplateService *) getBaseTemplateService{
    return self.testService;
}
- (BaseTableViewVo *)getBaseTableViewVo {
    return self.testVo;
}
-(NSString *) getVCName{
    return @"TestVC";
}

#pragma mark - UITableViewDataSource Mothods 这块可以用反射实现，暂时先这样用
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestCell *testCell = nil;
    BaseTableCellVo *baseTableCellVo = [super getBaseTableCellVoByIndexPath:indexPath baseTableViewVo:self.testVo];
    if (baseTableCellVo != nil) {
        if ([@"testCell" isEqualToString:baseTableCellVo.cellName]) {
            [tableView registerClass:[testCell class] forCellReuseIdentifier:baseTableCellVo.cellName];
            testCell = [tableView dequeueReusableCellWithIdentifier:baseTableCellVo.cellName];
            if (testCell == nil) {
                testCell = [[TestCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:baseTableCellVo.cellName];
            }
            [testCell setCellDataByCellVo:baseTableCellVo];
            return testCell;
        }
    }
    return testCell;
}
#pragma mark - UITableViewDelegate Mothods
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseTableCellVo *baseTableCellVo = [super getBaseTableCellVoByIndexPath:indexPath baseTableViewVo:self.testVo];
    JLLifeServiceVC *vc = [[JLLifeServiceVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
