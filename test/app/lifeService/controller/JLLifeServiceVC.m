//
//  JLLifeServiceVC.m
//  test
//
//  Created by admin on 2018/7/7.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "JLLifeServiceVC.h"
#import "TableCollectViewCell.h"
#import "CollectionViewCell.h"
@interface JLLifeServiceVC ()

@end

@implementation JLLifeServiceVC


-(void) initBaseView{
    self.lifeServiceView = [[JLLifeServiceView alloc] initWithFrame:CGRectMake(0, 0, BASE_WIDTH, BASE_HEIGHT)];
    self.lifeServiceView.baseTableView.layer.borderWidth = 0.5;
    self.lifeServiceView.baseTableView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.lifeServiceView.baseTableView.layer.masksToBounds = YES;

    [super initBaseView:self.lifeServiceView];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    self.lifeServiceVo = [[JLLifeServiceVo alloc] initByDic:dic];
    [self.lifeServiceView reloadView:self.lifeServiceVo];
}

-(BaseTableView *) getBaseTableView{
    return self.lifeServiceView;
}
- (void)initService;{
    self.lifeServiceService = [[JLLifeServiceService alloc] init];
}
- (void)initBaseVo{
    self.lifeServiceVo = [[JLLifeServiceVo alloc] init];
}
-(BaseTemplateService *) getBaseTemplateService{
    return self.lifeServiceService;
}
- (BaseTableViewVo *)getBaseTableViewVo {
    return self.lifeServiceVo;
}
-(NSString *) getVCName{
    return @"JLLifeServiceVC";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UITableViewDataSource Mothods 这块可以用反射实现，暂时先这样用
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TableCollectViewCell *tableCollectViewCell = nil;
    BaseTableCellVo *baseTableCellVo = [super getBaseTableCellVoByIndexPath:indexPath baseTableViewVo:self.lifeServiceVo];
    if (baseTableCellVo != nil) {
        if ([@"TableCollectViewCell" isEqualToString:baseTableCellVo.cellName]) {
            [tableView registerClass:[tableCollectViewCell class] forCellReuseIdentifier:baseTableCellVo.cellName];
            tableCollectViewCell = [tableView dequeueReusableCellWithIdentifier:baseTableCellVo.cellName];
            if (tableCollectViewCell == nil) {
                tableCollectViewCell = [[TableCollectViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[NSString stringWithFormat:@"%@+%ld",baseTableCellVo.cellName,(long)indexPath.row]];
            }
            [tableCollectViewCell setCellDataByCellVo:baseTableCellVo];
//            testCell.selectionStyle=UITableViewCellSelectionStyleNone;
            tableCollectViewCell.textLabel.textColor = [UIColor blackColor];
            return tableCollectViewCell;
        }
    }
    return tableCollectViewCell;
}
-(float)getTableViewRowHeight{
    return 250;
}
#pragma mark - UITableViewDelegate Mothods
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseTableCellVo *baseTableCellVo = [super getBaseTableCellVoByIndexPath:indexPath baseTableViewVo:self.lifeServiceVo];
    
}



@end
