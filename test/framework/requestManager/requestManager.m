//
//  requestManager.m
//  DinnerLeader
//
//  Created by 吴君 on 16/4/5.
//  Copyright © 2016年 吴君. All rights reserved.
//

#import "requestManager.h"
#import <AFNetworking.h>
@interface requestManager ()

@property (nonatomic,strong)AFHTTPSessionManager *manager;

@end

@implementation requestManager

+(instancetype)manager
{
    return [[self alloc]init];
}

-(instancetype)init
{
    self.manager = [AFHTTPSessionManager manager];
    //修改请求类型
    _manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    //修改返回类型
    _manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    _manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/plain",@"text/html", nil]; //@"text/plain"   @"text/plain", @"text/html", @"application/json"
    
    //设置超时时间
    [_manager.requestSerializer willChangeValueForKey:@"timeoutInterval"];
    _manager.requestSerializer.timeoutInterval = 30.0f;
    [_manager.requestSerializer didChangeValueForKey:@"timeoutInterval"];
    
    
    return self;
}

-(void)cancel
{
    [_manager.operationQueue cancelAllOperations];
}

/**
 *登录
 */
-(void)loginRequestWith:(NSString *)url parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure
{
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
    }];
}
/**PC登录*/
-(void)PCloginRequestWithURL:(NSString *)url with:(NSMutableDictionary *)pramas withKey:(NSString *)tokenKey withToken:(NSString *)token success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:pramas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}
/**PC取消登录*/
-(void)PCunLoginRequestWithURL:(NSString *)url withParmas:(NSMutableDictionary *)parmas withKey:(NSString *)tokenKey withToken:(NSString *)token success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}
/**扫码*/
-(void)PCscanLoginRequestWihtURL:(NSString *)url withParmas:(NSMutableDictionary *)parmas withKey:(NSString *)tokenKey withToken:(NSString *)token success:(void(^)(NSObject *response))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/**订单-未装车列表*/
-(void)ManagerOrderUnfinishedListRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *respone))success failere:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];//
//    NSDictionary *di =  _manager.requestSerializer.HTTPRequestHeaders;
    
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
        
    }];
}

/**订单-装车列表*/
-(void)ManagerOrderFinishedListRequestWtihUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *respone))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];//
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
        
    }];
}

-(void)ManagerOrderCustomerFeedBackRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *respone))success failure:(void(^)(NSObject *error))failure
{
    
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];//
    
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
        
    }];
    
}


-(void)storeAndrouteRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey Withtoken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responePbject))success failure:(void(^)(NSObject *error))failure
{
    
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];//
    
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
        
    }];
}

-(void)orderProductRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
        
    }];
}

/**保存*/
-(void)saveRequestWithUrl:(NSString *)url WithKey:(NSString *)tokenKey WihtToken:(NSString *)token WithParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
        
    }];

}

/**订单编辑－未完成*/
-(void)editRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
        
    }];

}

-(void)editSaveRequestWithUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
        
    }];
    
}

/**订单显示-完成-显示*/
-(void)showRequestWihtUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        failure(error);
    }];
    
}
/**装车-客户列表(餐馆列表)*/
-(void)hotelListOfRouteWihtUrl:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/**配送－未送*/
-(void)undeliveryCustomerPageManagerWithURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token parmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSObject *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/**配送 － 已送*/
-(void)deliveryCustomerPageManagerWithURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token withParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSError *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
    
}

/**配送-补货*/
-(void)supplementManagerWithURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token withParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSError *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/**配送-车存*/
-(void)busStoreManagerWihtURL:(NSString *)url withKey:(NSString *)tokenKey withToken:(NSString *)token withParmas:(NSMutableDictionary *)parmas success:(void(^)(NSObject *responseObject))success failure:(void(^)(NSError *error))failure
{
   [self postRequestWithUrl:url withParmas:parmas withToken:token withTokenKey:tokenKey success:^(NSObject *response) {
       success(response);
   } failure:^(NSError *error) {
       failure(error);
   }];


}

-(void)postRequestWithUrl:(NSString *)url withParmas:(NSMutableDictionary *)parmas withToken:(NSString *)token withTokenKey:(NSString *)tokenKey success:(void(^)(NSObject *response))success failure:(void(^)(NSError *error))failure
{
    [_manager.requestSerializer setValue:token forHTTPHeaderField:tokenKey];
    [_manager POST:url parameters:parmas progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
}

/**配送单*/
-(void)distributionListWihtUrl:(NSString *)url withParmas:(NSMutableDictionary *)parmas withToken:(NSString *)token withTokenKey:(NSString *)tokenKey success:(void(^)(NSObject *response))success withFailure:(void(^)(NSError *error))failure
{
    [self postRequestWithUrl:url withParmas:parmas withToken:token withTokenKey:tokenKey success:^(NSObject *response) {
        success(response);
    } failure:^(NSError *error) {
        failure(error);
    }];
}

/**配送单-提交客户*/
-(void)submitCustomerWithUrl:(NSString *)url withParmas:(NSMutableDictionary *)parmas withToken:(NSString *)token withTokenKey:(NSString *)tokenKey success:(void(^)(NSObject *response))success failure:(void(^)(NSError *error))failure
{
    [self postRequestWithUrl:url withParmas:parmas withToken:token withTokenKey:tokenKey success:^(NSObject *response) {
        success(response);
    } failure:^(NSError *error) {
        failure(error);
    }];
    
}




/**手签*/
-(void)handSignWithUrl:(NSString *)url withParmas:(NSMutableDictionary *)parmas withToken:(NSString *)token withTokenKey:(NSString *)tokenKey success:(void(^)(NSObject *response))success failure:(void(^)(NSError *error))failure
{
    [self postRequestWithUrl:url withParmas:parmas withToken:token withTokenKey:tokenKey success:^(NSObject *response) {
        success(response);
    } failure:^(NSError *error) {
        failure(error);
    }];
}


@end
