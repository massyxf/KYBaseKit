//
//  UIView+SYRadius.h
//  ShiYingPlayer
//
//  Created by yxf on 2020/11/28.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (KYRadius)

-(void)sy_addRadius:(CGFloat)radius;

-(void)shadowWithSize:(CGSize)size
               offset:(CGSize)offset
         shadowRadius:(CGFloat)shadowRadius
            extension:(CGFloat)extension
          shadowColor:(UIColor *)shadowColor;

@end

NS_ASSUME_NONNULL_END
