//
//  BaseTemplateVC.h
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseVC.h"
#import "BaseTemplateView.h"
#import "BaseTemplateService.h"

@interface BaseTemplateVC : BaseVC
@property (nonatomic,strong)NSString *viewDidApearAction;
@property (nonatomic, strong) NSString *viewDidApearURL;
@property (nonatomic,strong)NSMutableDictionary *pamDic;
@property (nonatomic, strong) NSString *currentVCAction;
@property (nonatomic,strong)NSString *viewWillApearAction;
@property (nonatomic, strong) NSString *viewWillApearURL;
@property (nonatomic, strong) NSMutableArray *elementObjList;

@property (nonatomic, strong) NSMutableArray *eleObjWithPermissionList;
@property (nonatomic, strong) NSMutableArray *eleObjWithoutPermissionList;


-(void) addNavLeftBarButton;
-(void) addNavRightBarButton;
-(void)addNavtionItemTitleView:(NSString *)title;
-(BaseTemplateService *) getBaseTemplateService;

@end
