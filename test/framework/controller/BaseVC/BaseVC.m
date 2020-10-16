//
//  BaseVC.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "BaseVC.h"
#import <MBProgressHUD/MBProgressHUD.h>
@interface BaseVC ()

@end

@implementation BaseVC

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sessionManager = [[AFHTTPSessionManager alloc] init];

    [self initBaseVo];
    [self initBaseView];
    [self initService];
    
}
- (void)initBaseVo{}
- (void)initBaseView{}
- (void)initService{}

- (void)initBaseVo :(BaseVo *) baseVo{
    baseVo = [[BaseVo alloc] init];
}

- (void)initBaseView :(BaseView *) baseView{
    [self.view addSubview:baseView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)requestWithURL:url withParameter:(NSMutableDictionary *)pamDic loadingText:(NSString *) loadingText{
    [self requestWithURL:url withParameter:pamDic loadingText:loadingText isReloadByPermission:NO];
    
}
-(void)requestWithURL:(NSString *)url withParameter:(NSMutableDictionary *)pamDic
{
    [self requestWithURLWithLoadingText:url withParameter:pamDic];
}

-(void)requestWithURLWithLoadingText:(NSString *)url withParameter:(NSMutableDictionary *)pamDic
{
    //NSLog(@"URL===%@",url);
    [self.sessionManager POST:url parameters:nil
                     progress:^(NSProgress * _Nonnull progress) {
                         [self handleRequestWithURLProgress:url ];
                     } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//                             [MBProgressHUD hideHUDForView:self.view animated:YES];
                         NSObject *responseData = (NSObject *)responseObject;
                         self.requestWithURLDic = (NSDictionary *)responseData;
//                             NSLog(@"responseData == %@",responseData);
                         [self handleRequestWithURLSuccess:url];
                         //NSLog(@"responseData == %@",self.requestWithURLDic);
                     } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                         NSLog(@"Failed to requestWithURL,url:%@ ,error: %@", url,[error localizedDescription]);
                         [self handleRequestWithURLFailure:url ];
//                             [MBProgressHUD hideHUDForView:self.view animated:YES];
                     }];
    
}

-(void) handleRequestWithURLProgress:url {
   // NSLog(@"handleRequestWithURLProgress:%@",url);
}
-(void) handleRequestWithURLSuccess:url {
    //NSLog(@"handleRequestWithURLSuccess:%@",url);
}
-(void) handleRequestWithURLFailure:url {
    NSLog(@"handleRequestWithURLFailure:%@",url);
}


@end
