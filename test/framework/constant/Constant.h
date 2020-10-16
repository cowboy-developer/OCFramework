//
//  Constant.h
//  Bestdinner
//
//  Created by 吴君 on 16/3/24.
//  Copyright © 2016年 吴君. All rights reserved.
//

#ifndef Constant_h
#define Constant_h

#import "UIDevice+Recognition.h"
#import "MBProgressHUD.h"
//#import "Singleton.h"
#import "AFNetworking.h"
#import "GlobalSetting.h"
#import "FMDB.h"
#import "PathConstant.h"
#import "UIImageView+WebCache.h"
#import "requestManager.h"

#define SCREEN_WIDTH    ([UIScreen mainScreen].bounds.size.width)       //屏幕宽度
#define SCREEN_HEIGHT   ([UIScreen mainScreen].bounds.size.height)      //屏幕高度

#define SCREEN_SCALE ([UIScreen mainScreen].scale)

#define CUR_WINDOW ((UIWindow *)[UIApplication sharedApplication].windows[0])   //当前窗口

#define SLog(format, ...) printf("class: <%p %s:(%d) > method: %s \n%s\n", self, [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __PRETTY_FUNCTION__, [[NSString stringWithFormat:(format), ##__VA_ARGS__] UTF8String] )


//数据库相关
#define kDatabaseFileName       @"DinnerLeader.sqlite"

//颜色相关
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define textCor   [UIColor colorWithRed:55.0f/255.0f green:148.0f/255.0f blue:216.0f/255.0f alpha:1];

#define kLineColor              RGBCOLOR(200, 200, 200)

#define allColor  [UIColor colorWithRed:51/255.0 green:115/255.0 blue:184/255.0 alpha:1];

#define nlightGrayColor [UIColor colorWithRed:245/255.0f green:245/255.0f blue:245/255.0f alpha:1];

#define sandBoxUserModelPath  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"userInfo.data"]

#define kuserModel [NSKeyedUnarchiver unarchiveObjectWithFile:sandBoxUserModelPath];

#define clientUUID  [[UIDevice currentDevice].identifierForVendor UUIDString]

#define KeyJwt @"jwt"

#endif /* Constant_h */
