


#import "UIDevice+Recognition.h"
//#import "MBProgressHUD.h"
//#import "Singleton.h"
#import "AFNetworking.h"
#import "GlobalSetting.h"
#import "FMDB.h"
#import "PathConstant.h"
#import "UIImageView+WebCache.h"
#import "requestManager.h"
#import "URLConstant.h"
//#import "ColorConstant.h"

#define CON_DATE_FORMAT @"yyyy-MM-dd"
#define CON_DATE_TIME_FORMAT @"yyyy-MM-dd HH:mm:ss"
#define CON_DATE_TIME_WITHOUTSECOND @"yyyy-MM-dd HH:mm"
#define DB_DATA_FILE @"DB.sqlite"
#define IMG_DATA_FILE @"IMG"
#define IMAGE_PATH @"Documents"

#define permission_hide @"permission_hide"
#define permission_show @"permission_show"
#define pageMode_readonly @"pageMode_readonly"
#define pageMode_editable @"pageMode_editable"


#define KEY_JWT @"jwt" 
#define kEY_TOKEN  @"99e507d50310415eb0e877d9a044efd4"//0eee25845ae74d07b8d65f2877c7db09
#define CLIENT_UUID  [[UIDevice currentDevice].identifierForVendor UUIDString]
#define SAND_BOX_USER_MODEL_PATH  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"userInfo.data"]
#define KEY_USER_MODEL [NSKeyedUnarchiver unarchiveObjectWithFile:SAND_BOX_USER_MODEL_PATH];

#define  VC_ACTION_viewWillApearAction @"viewWillApearAction"

#define DATE_PICKER_TYPE_DATE @"DATE_PICKER_TYPE_DATE"
#define DATE_PICKER_TYPE_TIME @"DATE_PICKER_TYPE_TIME"

//定义多少分钟重新更新List的数据
#define REFRESH_LIST_TIME_COUNT 0.02





