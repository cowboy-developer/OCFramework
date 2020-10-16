//
//  CommonUtil.h
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseTableCellVo.h"
@interface CommonUtil : NSObject
+(int) getArrayCount:(NSMutableArray *) inArray;
+(void) addDataToNSMutableArray:(NSMutableArray *) trgArray inArray:(NSMutableArray *) inArray;
+(NSMutableArray *)removeBaseTableCellVoFromArrayByCellKey:(NSString *)cellKey dataArray:(NSMutableArray *) dataArray;
+ (BOOL) isEmptyString :(NSString *) instr;
+ (BOOL) isEmptyMap :(NSMutableDictionary *) inMap;
+ (NSString *) trimNSString:(NSString *)inStr;
+ (NSString *)dateToString:(NSDate *)date;
+ (NSString *)dateTimeToString:(NSDate *)date;
+ (NSString *)dateToString:(NSDate *)date dateFormat:(NSString *)dateFormat;
+ (NSString *)dateTimeToString:(NSDate *)date dateFormat:(NSString *)dateFormat;
+ (NSDate *)stringToDate:(NSString *)stringDate;
+ (NSDate *)stringToTime:(NSString *)stringTime;
+(NSString *)getCurrentDate;
+(NSString *)getCurrentYear;
+(NSString *)getCurrentDate:(NSString *) dateFormat;
+(NSString *)nullToNSString:(NSString *) inString;
+ (int) nsstringToInt:(NSString *)nsstring;
+ (NSString *) intToNSString:(int) intValue;
+(BOOL) isFileExists:(NSString *) fileName;
+ (void) alertWithTitle: (NSString *)theTitle msg: (NSString *)msg;
+ (BOOL) isValidDate:(NSString *) strDate;
+ (BOOL) isValidDateTime:(NSString *) strDateTime;
+ (NSDate *)getCurrentNSDate;
+ (NSString *) lpadNumber:(int) number padCount:(int) count;
+(NSString *)nullToString:(char *) cString;
//+(NSString *)encryByISS:(NSString *)iss withFirstid:(NSString *)firstid withPageable:(BOOL)pageable;
+(NSString *)encryByParameterMap:(NSMutableDictionary *)pamDic;
+(int) getIntFromMapByKey:(NSDictionary *) map key:(NSString *)key;
+(NSString *) mapValueToString:(NSDictionary *) map key:(NSString *)key;
+(NSString *) getCurrentUserName;
+(NSString *) dicToJsonString:(NSMutableDictionary *) pamDic;
+ (BOOL)isValidInt:(NSString*)string;
+ (BOOL)isValidFloat:(NSString*)string;
+(NSString *) getDateFromDateTime:(NSString *) dateTimeStr;
+(NSString *) getTimeFromDateTime:(NSString *) dateTimeStr;
+(NSString *)getCurrentTime;
+(NSString *)getCurrentTime:(NSString *)dateFormat;
+(NSString *)getYesterdayDate;
+(NSString *)getThisWeekDay1;
+(NSString *)getThisWeekDay7;
+ (void) alertYesOrNoWithTitle: (NSString *)theTitle msg: (NSString *)msg;
+(NSObject *) getObjectFromURLDicResult:(NSDictionary *) urlDic objKey:(NSString *)objKey;
+(NSString *)getNSStringFromURLDic:(NSDictionary *) urlDic entityName:(NSString *)entityName objKey:(NSString *)objKey;
+(NSArray *)getNSArrayFromURLDic:(NSDictionary *) urlDic entityName:(NSString *)entityName objKey:(NSString *)objKey;
+(NSDictionary *) getEntityFromURLDic:(NSDictionary *) urlDic entityName:(NSString *)entityName ;
+(NSString*)DataTOjsonString:(id)object;
+(BOOL) isContainString:(NSString *) wholeStr subStr:(NSString *)subStr;
+(BOOL) isEmptyArray:(NSArray *) inArray;
+(BOOL) isEmptyObject:(NSObject *) obj;
+(NSString *)getMonthFromNSStringDate:(NSString *) strDate;
+ (void) saveImage:(UIImage *)currentImage withName:(NSString *)fileName;
+ (UIImage *) getImage:(NSString *)fileName;
+(BOOL)deleteImage:(NSString * )fileName;
+ (UIImage *) getImageByImageSid:(NSString *)imgSid;
+ (NSString *) nsIntegerToNSString:(NSInteger) nsIntegerValue;
+(NSString *)getDayFromNSStringDate:(NSString *) strDate;

@end
