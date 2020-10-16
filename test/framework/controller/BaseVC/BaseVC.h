//
//  BaseVC.h
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "CoreVC.h"
#import "BaseView.h"
#import "BaseVo.h"
#import <AFNetworking.h>

@interface BaseVC : CoreVC
//网络
@property (nonatomic,strong) NSString * requestWithURLMsg;
@property (nonatomic,strong) NSDictionary *requestWithURLDic;
@property (nonatomic,strong) NSString * requestWithURLRstCode;
@property (nonatomic,strong) AFHTTPSessionManager *sessionManager;


//-(void)requestWithURL:url  withFirstid:(NSString *)firstid withPageable:(BOOL)pageable;
-(void)requestWithURL:url withParameter:(NSMutableDictionary *)pamDic loadingText:(NSString *) loadingText;
-(void)requestWithURL:url withParameter:(NSMutableDictionary *)pamDic loadingText:(NSString *) loadingText isReloadByPermission:(BOOL)isReloadByPermission;
-(void)requestWithURL:(NSString *)url withParameter:(NSMutableDictionary *)pamDic;

-(void)reloadPermissionViewByRequestWithURL:(NSDictionary *)requestWithURLDic;
-(void) handleRequestWithURLProgress:url;
-(void) handleRequestWithURLSuccess:url rstDic:(NSDictionary*)rstDic;
-(void) handleRequestWithURLFailure:url;
-(void) handleRequestWithURLSuccess:url;
-(void)handleRequestWithURL700:url withMessage:(NSString *)message;

//初始化
- (void)initBaseView :(BaseView *) baseView;
- (void)initBaseVo :(BaseVo *) baseVo;
- (void)initBaseView;
- (void)initBaseVo;
- (void)initService;


// 回调

@end
