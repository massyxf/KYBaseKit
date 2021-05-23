//
//  UIImage+SYExtension.h
//  ShiYingPlayer
//
//  Created by yxf on 2020/11/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (KYExtension)

+(UIImage *)imageFromContextWithColor:(UIColor *)color
                                 size:(CGSize)size;
+ (UIImage *)imageWithColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
