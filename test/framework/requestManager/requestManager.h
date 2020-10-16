//
//  requestManager.h
//  DinnerLeader
//
//  Created by 吴君 on 16/4/5.
//  Copyright © 2016年 吴君. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface requestManager : NSObject

+(instancetype)manager;

-(void)cancel;
/**
 *登录
 */
-(void)loginRequestWith:(NSString *)url parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure;
/**PC端登录*/
-(void)PCloginRequestWithURL:(NSString *)url with:(NSMutableDictionary *)pramas withKey:(NSString *)tokenKey withToken:(NSString *)token success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure;
/**PC取消登录*/
-(void)PCunLoginRequestWithURL:(NSString *)url withParmas:(NSMutableDictionary *)parmas withKey:(NSString *)tokenKey withToken:(NSString *)token success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure;
/**扫码*/
-(void)PCscanLoginRequestWihtURL:(NSString *)url withParmas:(NSMutableDictionary *)parmas withKey:(NSString *)tokenKey withToken:(NSString *)token success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure;

/**订单-未装车列表*/
-(void)ManagerOrderUnfinishedListRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *respone))success failere:(void(^)(NSObject *error))failure;
/**订单-订单装车列表*/
-(void)ManagerOrderFinishedListRequestWtihUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *respone))success failure:(void(^)(NSObject *error))failure;
/**客户反馈回调*/
-(void)ManagerOrderCustomerFeedBackRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *respone))success failure:(void(^)(NSObject *error))failure;
/**
 *获取仓库和线路
 */
-(void)storeAndrouteRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey Withtoken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responePbject))success failure:(void(^)(NSObject *error))failure;

/**获取产品*/
-(void)orderProductRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure;
/**保存*/
-(void)saveRequestWithUrl:(NSString *)url WithKey:(NSString *)tokenKey WihtToken:(NSString *)token WithParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure;
/**订单编辑－未完成*/
-(void)editRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure;
/**订单编辑-未完成-保存*/
-(void)editSaveRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure;
/**订单显示-完成-显示*/
-(void)showRequestWihtUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure;
/**装车-客户列表(餐馆列表)*/
-(void)hotelListOfRouteWihtUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure;
/**配送－未送*/
-(void)undeliveryCustomerPageManagerWithURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure;
/**配送 － 已送*/
-(void)deliveryCustomerPageManagerWithURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token withParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSError *error))failure;
/**配送-补货*/
-(void)supplementManagerWithURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token withParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSError *error))failure;
/**配送-车存*/
-(void)busStoreManagerWihtURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token withParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSError *error))failure;
/**配送-未送－配送单*/
-(void)distributionListWihtUrl:(NSString *)url withParmas:(NSMutableDictionary *)parmas withToken:(NSString *)token withTokenKey:(NSString *)tokenKey success:(void(^)(NSObject *response))success withFailure:(void(^)(NSError *error))failure;
/**配送单-提交客户*/
-(void)submitCustomerWithUrl:(NSString *)url withParmas:(NSMutableDictionary *)parmas withToken:(NSString *)token withTokenKey:(NSString *)tokenKey success:(void(^)(NSObject *response))success failure:(void(^)(NSError *error))failure;
/**手签*/
-(void)handSignWithUrl:(NSString *)url withParmas:(NSMutableDictionary *)parmas withToken:(NSString *)token withTokenKey:(NSString *)tokenKey success:(void(^)(NSObject *response))success failure:(void(^)(NSError *error))failure;

@end
