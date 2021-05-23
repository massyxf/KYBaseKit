//
//  NSString+NDExtension.m
//  NDTruck
//
//  Created by yxf on 2019/11/22.
//  Copyright © 2019 k_yan. All rights reserved.
//

#import "NSString+KYExtension.h"

@implementation NSString (KYExtension)

-(NSString *)trimString{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+ (NSString *)uuid {
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    CFStringRef strUuid = CFUUIDCreateString(kCFAllocatorDefault,uuid);
    NSString * str = [NSString stringWithString:(__bridge NSString *)strUuid];
    CFRelease(strUuid);
    CFRelease(uuid);
    return  str;
}

-(NSString *)firstChar{
    NSString *text = [self trimString];
    if (text == 0) {
        return @"##";
    }
    return [text substringToIndex:1];
}

///小数保留以为小数转成字符串
+(NSString *)onePointNumToString:(double)num{
    NSInteger altNum = num * 10;
    NSInteger intNum = altNum / 10;
    NSInteger pointNum = altNum % 10;
    if (pointNum == 0) {
        return [NSString stringWithFormat:@"%ld",(long)intNum];
    }
    return [NSString stringWithFormat:@"%.1f",num];
}

+(NSString *)twoPointNumToString:(double)num{
    NSInteger altNum = num * 100;
    NSInteger intNum = altNum / 100;
    NSInteger pointNum = altNum % 100;
    if (pointNum == 0) {
        return [NSString stringWithFormat:@"%ld",(long)intNum];
    }
    return [NSString stringWithFormat:@"%.2f",num];
}


+ (NSString *)homePath {
    return NSHomeDirectory();
}

+ (NSString *)cachePath {
    return NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
}

+ (NSString *)documentsPath {
    return NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
}

+ (NSString *)supportPath {
    NSString *supportPath = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES).lastObject;
    NSFileManager *fm = [NSFileManager defaultManager];
    if (![fm fileExistsAtPath:supportPath]) {
        NSError *error = nil;
        if (![fm createDirectoryAtPath:supportPath withIntermediateDirectories:YES attributes:nil error:&error]) {
            NSLog(@"创建support path出错:%@",error);
        }
    }
    return supportPath;
}

+ (NSString *)appSupportPath {
    return [@"ndtruck" appendSupportPath];
}

+ (NSString *)tmpPath {
    return NSTemporaryDirectory();
}

- (NSString *)appendPathComponent:(NSString *)appendingPath {
    return [appendingPath stringByAppendingPathComponent:self];
}

- (NSString *)appendDocPath {
    return [self appendPathComponent:[NSString documentsPath]];
}

- (NSString *)appendSupportPath {
    return [self appendPathComponent:[NSString supportPath]];
}

- (NSString *)appendCachePath {
    return [self appendPathComponent:[NSString cachePath]];
}

- (NSString *)appendTmpPath {
    return [self appendPathComponent:[NSString tmpPath]];
}

@end
