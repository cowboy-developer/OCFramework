//
//  CommonUtil.m
//  test
//
//  Created by admin on 2018/6/29.
//  Copyright © 2018年 melon. All rights reserved.
//

#import "CommonUtil.h"
#define CON_DATE_FORMAT @"yyyy-MM-dd"
#define CON_DATE_TIME_FORMAT @"yyyy-MM-dd HH:mm:ss"
#define CON_DATE_TIME_WITHOUTSECOND @"yyyy-MM-dd HH:mm"
#define IMG_DATA_FILE @"IMG"
#define IMAGE_PATH @"Documents"
@implementation CommonUtil
+(int) getArrayCount:(NSMutableArray *) inArray{
    if (inArray == nil) {
        return 0;
    }
    NSNumber *selRow = [[NSNumber alloc] initWithInteger:[inArray count]];
    return [selRow intValue];
}
+(void) addDataToNSMutableArray:(NSMutableArray *) trgArray inArray:(NSMutableArray *) inArray{
    if (trgArray == nil || inArray == nil) {
        return;
    }
    for (int idx=0; idx<[inArray count]; idx++) {
        [trgArray addObject:[inArray objectAtIndex:idx]];
    }
}
+(NSMutableArray *)removeBaseTableCellVoFromArrayByCellKey:(NSString *)cellKey dataArray:(NSMutableArray *) dataArray{
    if (dataArray == nil) {
        return dataArray;
    }
    for (int idx=0; idx<[dataArray count]; idx++) {
        BaseTableCellVo *cellVo = [dataArray objectAtIndex:idx];
        if ([cellVo.cellKey isEqualToString:cellKey]) {
            [dataArray removeObjectAtIndex:idx];
        }
    }
    return dataArray;
}

+ (BOOL) isEmptyString :(NSString *) instr{
    if (instr == nil || [instr isEqualToString:@""]) {
        return TRUE;
    }
    
    return FALSE;
}

+ (NSString *) trimNSString:(NSString *)inStr{
    if (inStr == nil) {
        return @"";
    }
    return [inStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(NSString *) getDateFromDateTime:(NSString *) dateTimeStr{
    if (dateTimeStr == nil || dateTimeStr.length<10) {
        return @"";
    }
    return [dateTimeStr substringToIndex:10];
}
+(NSString *) getTimeFromDateTime:(NSString *) dateTimeStr{
    if (dateTimeStr == nil || dateTimeStr.length<11) {
        return @"";
    }
    return [dateTimeStr substringFromIndex:11];
}

+ (NSString *)dateToString:(NSDate *)date{
    return [self dateToString:date dateFormat:CON_DATE_FORMAT];
}

+ (NSString *)dateTimeToString:(NSDate *)date{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:CON_DATE_TIME_FORMAT];
    NSString *destDateString = [dateFormatter stringFromDate:date];
    return destDateString;
}

+ (NSString *)dateTimeToString:(NSDate *)date dateFormat:(NSString *)dateFormat{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    NSString *destDateString = [dateFormatter stringFromDate:date];
    return destDateString;
}

+ (NSString *)dateToString:(NSDate *)date dateFormat:(NSString *)dateFormat{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    NSString *destDateString = [dateFormatter stringFromDate:date];
    return destDateString;
}

+ (NSDate *)stringToDate:(NSString *)stringDate{
    if ([CommonUtil isEmptyString:stringDate]) {
        return nil;
    }
    if (CON_DATE_FORMAT.length == stringDate.length) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat: CON_DATE_FORMAT];
        NSDate *destDate= [dateFormatter dateFromString:stringDate];
        return destDate;
    }
    if (CON_DATE_TIME_FORMAT.length == stringDate.length) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat: CON_DATE_TIME_FORMAT];
        NSDate *destDate= [dateFormatter dateFromString:stringDate];
        return destDate;
    }
    if (CON_DATE_TIME_WITHOUTSECOND.length == stringDate.length) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat: CON_DATE_TIME_WITHOUTSECOND];
        NSDate *destDate= [dateFormatter dateFromString:stringDate];
        return destDate;
    }
    return nil;
}


+ (NSDate *)stringToTime:(NSString *)stringTime{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: CON_DATE_TIME_FORMAT];
    NSDate *destDate= [dateFormatter dateFromString:stringTime];
    return destDate;
}

+(NSString *)getCurrentDate{
    return [CommonUtil dateToString:[NSDate date]];
}

+(NSString *)getYesterdayDate{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:( NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond ) fromDate:[[NSDate alloc] init]];
    [components setHour:-[components hour]];
    [components setMinute:-[components minute]];
    [components setSecond:-[components second]];
    NSDate *today = [cal dateByAddingComponents:components toDate:[[NSDate alloc] init] options:0]; //This variable should now be pointing at a date object that is the start of today (midnight);
    [components setHour:-24];
    [components setMinute:0];
    [components setSecond:0];
    NSDate *yesterday = [cal dateByAddingComponents:components toDate: today options:0];
    return [CommonUtil dateToString:yesterday];
}

+(NSString *)getThisWeekDay1{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[[NSDate alloc] init]];
    [components setDay:([components day] - ([components weekday] - 2))];
    NSDate *thisWeek  = [cal dateFromComponents:components];
    return [CommonUtil dateToString:thisWeek];
}

+(NSString *)getThisWeekDay7{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:NSCalendarUnitWeekday | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[[NSDate alloc] init]];
    [components setDay:([components day] - ([components weekday] - 2) +6)];
    NSDate *thisWeek7  = [cal dateFromComponents:components];
    return [CommonUtil dateToString:thisWeek7];
}

+(NSString *)getCurrentTime{
    NSDateFormatter *nsdf2=[[NSDateFormatter alloc] init];
    [nsdf2 setDateStyle:NSDateFormatterShortStyle];
    [nsdf2 setDateFormat:CON_DATE_TIME_FORMAT];
    NSString *date=[nsdf2 stringFromDate:[NSDate date]];
    return date;
}

+(NSString *)getCurrentTime:(NSString *)dateFormat{
    NSDateFormatter *nsdf2=[[NSDateFormatter alloc] init];
    [nsdf2 setDateStyle:NSDateFormatterShortStyle];
    [nsdf2 setDateFormat:dateFormat];
    NSString *date=[nsdf2 stringFromDate:[NSDate date]];
    return date;
}

+(NSString *)getCurrentYear{
    return [CommonUtil dateToString:[NSDate date] dateFormat:@"YYYY"];
}

+(NSString *)getCurrentDate:(NSString *) dateFormat{
    return [CommonUtil dateToString:[NSDate date] dateFormat:dateFormat];
}

+(NSString *)nullToNSString:(NSString *) inString{
    if (inString == nil) {
        return @"";
    }
    if (inString == NULL) {
        return @"";
    }
    if ([inString isKindOfClass:[NSString class]]) {
        if ([inString length] == 0  ) {
            return @"";
        }
    }
    return inString;
}

+(NSString *) mapValueToString:(NSDictionary *) map key:(NSString *)key{
    if ([map objectForKey:key] == nil) {
        return @"";
    }
    if ([map objectForKey:key] == NULL) {
        return @"";
    }
    if ([[map objectForKey:key] isKindOfClass:[NSString class]]) {
        return [CommonUtil nullToNSString:[map objectForKey:key]];
    }else if([[map objectForKey:key] isEqual:[NSNull null]]){
        return @"";
    } else{
        return [[map objectForKey:key] stringValue];
    }
}

+ (int) nsstringToInt:(NSString *)nsstring{
    if (nsstring == nil || [CommonUtil isEmptyString:nsstring]) {
        return 0;
    }
    return [nsstring intValue];
}

+ (NSString *) intToNSString:(int) intValue{
    return [NSString stringWithFormat:@"%d",intValue];
}

+ (NSString *) nsIntegerToNSString:(NSInteger) nsIntegerValue{
    return [[NSNumber numberWithInteger:nsIntegerValue ] stringValue];
}



+(BOOL) isFileExists:(NSString *) fileName{
    NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:IMAGE_PATH] stringByAppendingPathComponent:fileName];
    BOOL blHave=[[NSFileManager defaultManager] fileExistsAtPath:fullPath];
    if (!blHave) {
        return FALSE;
    }else{
        return TRUE;
    }
}


+ (void) alertYesOrNoWithTitle: (NSString *)theTitle msg: (NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:theTitle
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"取消"
                                          otherButtonTitles:@"确定",nil];
    [alert show];
}


+ (void) alertWithTitle: (NSString *)theTitle msg: (NSString *)msg
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:theTitle
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
}

+ (BOOL) isValidDate:(NSString *) strDate{
    if ([strDate isEqualToString:[CommonUtil dateToString:[CommonUtil stringToDate:strDate]]]) {
        return TRUE;
    }else{
        return FALSE;
    }
}

+ (BOOL) isValidDateTime:(NSString *) strDateTime{
    if ([strDateTime isEqualToString:[CommonUtil dateTimeToString:[CommonUtil stringToTime:strDateTime]]]) {
        return TRUE;
    }else{
        return FALSE;
    }
}

+ (NSDate *)getCurrentNSDate
{
    NSDate *currDate = [NSDate date];
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate:currDate];
    currDate = [currDate dateByAddingTimeInterval:interval];
    return currDate;
}

+ (NSString *) lpadNumber:(int) number padCount:(int) count{
    int countNumber = 10;
    for (int i=0; i<count; i++) {
        countNumber = countNumber * 10;
    }
    int preNumber = number + countNumber;
    return [[CommonUtil intToNSString:preNumber] substringFromIndex:2];
}

+ (BOOL) isEmptyMap :(NSMutableDictionary *) inMap{
    if (inMap == nil) {
        return TRUE;
    }else{
        return FALSE;
    }
}

+(NSString *)nullToString:(char *) cString{
    if (cString == NULL || cString == nil) {
        return @"";
    }
    return [[NSString alloc] initWithUTF8String: cString];
}

+(NSString *) dicToJsonString:(NSMutableDictionary *) pamDic{
    NSMutableString *jsonStr = [[NSMutableString alloc] init];
    if (pamDic!=nil) {
        int cidx = 0;
        for (id pamKey in [pamDic allKeys]) {
            
            //NSLog(@"pamKey==%@",pamKey);
            if ([[pamDic objectForKey:pamKey] isKindOfClass:[NSString class]] ) {
                if (cidx != 0) {
                    //element之间分隔符
                    [jsonStr appendString:@","];
                }
                [jsonStr appendString:@"\""];
                [jsonStr appendString:pamKey];
                [jsonStr appendString:@"\":"];
                [jsonStr appendString:@"\""];
                [jsonStr appendString:[pamDic objectForKey:pamKey]];
                [jsonStr appendString:@"\""];
            }else if ([[pamDic objectForKey:pamKey] isKindOfClass:[NSMutableArray class]] ) {
                NSMutableArray *listArray =[pamDic objectForKey:pamKey];
                if (listArray != nil && [listArray count] > 0) {
                    if (cidx != 0) {
                        //element之间分隔符
                        [jsonStr appendString:@","];
                    }
                    
                    [jsonStr appendString:@"\""];
                    [jsonStr appendString:pamKey];
                    [jsonStr appendString:@"\": ["];
                    for (int idx=0; idx<[listArray count]; idx++) {
                        if (idx != 0) {
                            [jsonStr appendString:@","];
                        }
                        [jsonStr appendString:@"{"];
                        NSMutableDictionary *listMap = [listArray objectAtIndex:idx];
                        [jsonStr appendString:[self dicToJsonString:listMap]];
                        [jsonStr appendString:@"}"];
                    }
                    [jsonStr appendString:@"]"];
                }
            }else{
                if (cidx != 0) {
                    //element之间分隔符
                    [jsonStr appendString:@","];
                }
                [jsonStr appendString:@"\""];
                [jsonStr appendString:pamKey];
                [jsonStr appendString:@"\":"];
                [jsonStr appendString:@"\""];
                [jsonStr appendString:[pamDic objectForKey:pamKey]];
                [jsonStr appendString:@"\""];
            }
            
            cidx++;
        }
    }
    return jsonStr;
}


//+(NSString *)encryByParameterMap:(NSMutableDictionary *)pamDic{
//    NSString *str = @"{\"typ\":\"JWT\",\"alg\":\"SHA256\"}";
//    NSString *head = [ZZBase64 encodeBase64String:str];
//    //拼接字符串
//    NSMutableString *jsonStr = [[NSMutableString alloc] init];
//    [jsonStr appendString:@"{\"iss\":"];
//    [jsonStr appendString:@"\""];
//    [jsonStr appendString:CLIENT_UUID];
//    [jsonStr appendString:@"\""];
//    if (pamDic!=nil) {
//        [jsonStr appendString:@","];
//        [jsonStr appendString:[self dicToJsonString:pamDic]];
//    }
//    [jsonStr appendString:@"}"];
//    //NSLog(@"jsonStr = %@",jsonStr);
//    //NSString *f = [NSString stringWithFormat:@"{\"iss\":\"%@\",\"firstId\":\"%@\",\"pageable\":\"%zd\"}",CLIENT_UUID,firstid,pageable];
//    NSString *playLoadString = [ZZBase64 encodeBase64String:jsonStr];
//    NSString *connect = [NSString stringWithFormat:@"%@.%@",head,playLoadString];
//    NSString *se = [connect SHA256];
//    NSString *jwt = [NSString stringWithFormat:@"%@.%@",connect,se];
//    return jwt;
//}

+(int) getIntFromMapByKey:(NSDictionary *) map key:(NSString *)key{
    NSString *intStr = [map objectForKey:key];
    return [CommonUtil nsstringToInt:intStr];
}

//+(NSString *) getCurrentUserName{
//    userModel *model = kuserModel;
//    return [CommonUtil nullToNSString:model.userName];
//}

+ (BOOL)isValidInt:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}
//判断是否为浮点形：
+ (BOOL)isValidFloat:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
}
+(NSObject *) getObjectFromURLDicResult:(NSDictionary *) urlDic objKey:(NSString *)objKey{
    if (urlDic == nil) {
        return @"";
    }
    if ([urlDic objectForKey:@"result"] == nil) {
        return @"";
    }
    NSDictionary *rstDic =[urlDic objectForKey:@"result"];
    if ([rstDic objectForKey:objKey] == nil) {
        return @"";
    }else{
        return [rstDic objectForKey:objKey];
    }
    return @"";
}

+(NSDictionary *) getEntityFromURLDic:(NSDictionary *) urlDic entityName:(NSString *)entityName {
    if (urlDic==nil) {
        return nil;
    }
    if ([urlDic objectForKey:@"result"] == nil) {
        return nil;
    }
    NSDictionary *rstDic = [urlDic objectForKey:@"result"];
    if ([rstDic objectForKey:entityName]==nil ) {
        return nil;
    }
    NSDictionary *entityDic =[rstDic objectForKey:entityName];
    return entityDic;
}

+(NSString *)getNSStringFromURLDic:(NSDictionary *) urlDic entityName:(NSString *)entityName objKey:(NSString *)objKey {
    if (urlDic==nil) {
        return nil;
    }
    if ([urlDic objectForKey:@"result"] == nil) {
        return nil;
    }
    NSDictionary *rstDic = [urlDic objectForKey:@"result"];
    if ([rstDic objectForKey:entityName]==nil ) {
        return nil;
    }
    NSDictionary *entityDic =[rstDic objectForKey:entityName];
    return [entityDic objectForKey:objKey];
}

+(NSArray *)getNSArrayFromURLDic:(NSDictionary *) urlDic entityName:(NSString *)entityName objKey:(NSString *)objKey{
    if (urlDic==nil) {
        return nil;
    }
    if ([urlDic objectForKey:@"result"] == nil) {
        return nil;
    }
    NSDictionary *rstDic = [urlDic objectForKey:@"result"];
    if ([rstDic objectForKey:entityName ]==nil ) {
        return nil;
    }
    NSDictionary *entityDic =[rstDic objectForKey:entityName];
    return [entityDic objectForKey:objKey];
}

+(NSString*)DataTOjsonString:(id)object
{
    NSString *jsonString = nil;
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:object
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    NSLog(@"jsonString==%@",jsonString);
    return jsonString;
}

+(BOOL) isContainString:(NSString *) wholeStr subStr:(NSString *)subStr{
    if ([wholeStr rangeOfString:subStr].location != NSNotFound) {
        return TRUE;
    }
    return FALSE;
}
+(BOOL) isEmptyArray:(NSArray *) inArray{
    if (inArray == nil || [inArray count] == 0) {
        return TRUE;
    }
    return FALSE;
}

+(BOOL) isEmptyObject:(NSObject *) obj{
    if ([obj isKindOfClass:[NSString class]]) {
        return [CommonUtil isEmptyString:(NSString *)obj];
    }
    return obj==nil;
}

+(NSString *)getMonthFromNSStringDate:(NSString *) strDate{
    if ([CommonUtil isEmptyString:strDate]) {
        return @"";
    }
    NSDate *theDate = [CommonUtil stringToDate:strDate];
    //    NSLog(@"theDate:%@",theDate);
    return [CommonUtil dateToString:theDate dateFormat:@"MM"];
}

+(NSString *)getDayFromNSStringDate:(NSString *) strDate{
    if ([CommonUtil isEmptyString:strDate]) {
        return @"";
    }
    NSDate *theDate = [CommonUtil stringToDate:strDate];
    //    NSLog(@"theDate:%@",theDate);
    return [CommonUtil dateToString:theDate dateFormat:@"dd"];
}

+ (void) saveImage:(UIImage *)currentImage withName:(NSString *)fileName
{
    NSLog(@"calling  saveImage= %@", fileName);
    NSData *imageData = UIImageJPEGRepresentation(currentImage, 0.1);
    NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:IMAGE_PATH] stringByAppendingPathComponent:fileName];
    [imageData writeToFile:fullPath atomically:NO];
}
+ (UIImage *) getImage:(NSString *)fileName{
    NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:IMAGE_PATH] stringByAppendingPathComponent:fileName];
    
    return [[UIImage alloc] initWithContentsOfFile:fullPath];
}
+ (UIImage *) getImageByImageSid:(NSString *)imgSid{
    NSString *fileName = [NSString stringWithFormat:@"%@.png",imgSid];
    NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:IMAGE_PATH] stringByAppendingPathComponent:fileName];
    
    return [[UIImage alloc] initWithContentsOfFile:fullPath];
}
+(BOOL)deleteImage:(NSString * )fileName
{
    NSString *fullPath = [[NSHomeDirectory() stringByAppendingPathComponent:IMAGE_PATH] stringByAppendingPathComponent:fileName];
    if([[NSFileManager defaultManager] fileExistsAtPath:fullPath])//如果存在临时文件的配置文件
    {
        NSLog(@"calling  deleteImage= %@", fileName);
        return  [[NSFileManager defaultManager]  removeItemAtPath:fullPath error:nil];
    }
    return NO;
}
@end
