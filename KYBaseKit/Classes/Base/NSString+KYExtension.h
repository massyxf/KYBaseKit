//
//  NSString+NDExtension.h
//  NDTruck
//
//  Created by yxf on 2019/11/22.
//  Copyright © 2019 k_yan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (KYExtension)

///去除首尾空格和换行
-(NSString *)trimString;

///生产一个uuid
+ (NSString *)uuid;

///获取首字母
-(NSString *)firstChar;

///小数保留1位小数转成字符串
+(NSString *)onePointNumToString:(double)num;
///小数保留2位小数转成字符串
+(NSString *)twoPointNumToString:(double)num;

/**
 *  home目录
 *
 *  @return home目录路径
 */
+ (NSString *)homePath;

/**
 *  'cache' 目录
 *
 *  @return 'cache' 目录路径
 */
+ (NSString *)cachePath;

/**
 *  文档目录路径
 *
 *  @return 获取文档目录路径
 */
+ (NSString *)documentsPath;

/**
 *
 *  @return 获取 'Application Support' 目录
 */
+ (NSString *)supportPath;

/**
 *
 *  @return 'Application Support目录/ndtruck
 */
+ (NSString *)appSupportPath;

/**
 *  'temp' 目录
 *
 *  @return 获取 'temp' 目录
 */
+ (NSString *)tmpPath;

/**
 在此路径下扩展路径

 @param appendingPath 被扩展的路径

 @return 扩展后的路径
 */
- (NSString *)appendPathComponent:(NSString *)appendingPath;

/**
 *  获取一个文档目录中的路径
 *
 *  @return 获取一个文档目录中的路径
 */
- (NSString *)appendDocPath;

/**
 *  获取一个 'Application Support' 目录中的路径
 *
 *  @return 获取一个 'Application Support' 目录中的路径
 */
- (NSString *)appendSupportPath;

/**
 *  获取一个 'cache' 目录中的路径
 *
 *  @return 获取一个 'cache' 目录中的路径
 */
- (NSString *)appendCachePath;

/**
 *  获取一个 'temp' 目录中的路径
 *
 *  @return 获取一个 'temp' 目录中的路径
 */
- (NSString *)appendTmpPath;

@end

NS_ASSUME_NONNULL_END
