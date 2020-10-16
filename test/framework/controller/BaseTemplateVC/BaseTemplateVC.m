//
//  BaseTemplateVC.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseTemplateVC.h"

@interface BaseTemplateVC ()

@end

@implementation BaseTemplateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BaseTemplateService *) getBaseTemplateService{
    return nil;
}
-(BaseTemplateView *) getBaseTemplateView{
    return nil;
}
-(NSString *) getVCName{
    return nil;
}
- (void)initBaseView :(BaseView *) baseView{
    [self.view addSubview:baseView];
    [self addNavLeftBarButton];
    [self addNavRightBarButton];
    [self addNavtionItemTitleView:@""];
    if (self.elementObjList == nil) {
        self.elementObjList =[[NSMutableArray alloc]init];
    }
    [self applyElementKey];
    [self hideElementsByPermission];
}

-(void)applyElementKey{
    
}

-(void)hideElementsByPermission{
    
}

-(void) addNavRightBarButton{
}
-(void) addNavLeftBarButton{
//    YYNavLeftBtn *backBtn = [[YYNavLeftBtn alloc] initWithFrame: CGRectMake(0, 0, 70, 30) btnImgName:@"返回箭头" btnLbl:@""];
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
//    self.navigationItem.leftBarButtonItem = item;
//    [backBtn addTarget:self action:@selector(popToVC:) forControlEvents:UIControlEventTouchUpInside];
    //    [backBtn setBackgroundColor:[UIColor yellowColor]];
}

-(void)addNavtionItemTitleView:(NSString *)title
{
    UILabel *topTile = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 40)];
    topTile.text = title;
    topTile.textColor = [UIColor whiteColor];
    self.navigationItem.titleView = topTile;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
