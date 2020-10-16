//
//  GlobalSetting.h
//  DinnerLeader
//
//  Created by 吴君 on 16/4/5.
//  Copyright © 2016年 吴君. All rights reserved.
///api/product/list
#import "URLConstant.h"

#ifndef GlobalSetting_h
#define GlobalSetting_h


//服务器地址
//#define kUrlBase            @"http://192.168.199.121:8080/canlinghang"//jim
//#define kUrlBase            @"http://192.168.199.101:8080/canlinghang"// 水文
#define kUrlBase            BASE_URL//阿里云服务器地址
//#define kUrlBase            @"http://192.168.199.210:8080/canlinghang"// JJ

#define kLogin            kUrlBase@"/api/login"//登录
#define kOrder            kUrlBase@"/api/order/unfinishedLoadingOrderList"//订单 /api/order/unfinishedOrderList  /api/order/list 旧的订单列表接口，未分页前
#define kOrderFinished     kUrlBase@"/api/order/finishedLoadingOrderList"//装车列表
#define kOrderCustomerFeedBack  kUrlBase@"/api/customerOrder/list"//客户反馈
#define kOrderStoreAndPath kUrlBase@"/api/order/new"//获取仓库和线路
#define korderProduct     kUrlBase@"/api/storeProduct/list"//获取产品
#define korderSave        kUrlBase@"/api/order/create"//保存
#define korderEdit        kUrlBase@"/api/order/edit"//订单编辑 - 未完成
#define korderEditSave    kUrlBase@"/api/order/update"//订单编辑－未完成-保存
#define korderShow        kUrlBase@"/api/order/show"//订单完成－显示
#define khotelListShow    kUrlBase@"/api/customer/list"//装车-客户列表（餐馆列表）
#define kUndeliveryCustomerPage    kUrlBase@"/api/delivery/undeliveryCustomerList"//配送-未送 /api/delivery/undeliveryCustomerList  /api/delivery/undeliveryCustomerList
#define kDeliverCustomerpage       kUrlBase@"/api/delivery/deliveryCustomerList"//配送－已送
#define kSupplement                kUrlBase@"/api/delivery/allCustomerPage"//补货
#define kBusStore                  kUrlBase@"/api/carStore/show"//车存
#define kDistributionList          kUrlBase@"/api/delivery/new"//配送单
#define kHandSign                  kUrlBase@"/api/delivery/appHandSign/sign"//手签
#define kPClogin                   kUrlBase@"/api/console/login/confirm"
#define kPCunlogin                 kUrlBase@"/api/console/login/cancel"
#define kPCscan                    kUrlBase@"/api/console/login/scan"

#endif /* GlobalSetting_h */
