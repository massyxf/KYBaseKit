//
//  UIView+SYRadius.m
//  ShiYingPlayer
//
//  Created by yxf on 2020/11/28.
//

#import "UIView+KYRadius.h"

@implementation UIView (KYRadius)

-(void)sy_addRadius:(CGFloat)radius{
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

-(void)shadowWithSize:(CGSize)size offset:(CGSize)offset shadowRadius:(CGFloat)shadowRadius extension:(CGFloat)extension shadowColor:(UIColor *)shadowColor{
    [self shadowWithSize:size offset:offset shadowRadius:shadowRadius opacity:1 extension:extension shadowColor:shadowColor];
}

-(void)shadowWithSize:(CGSize)size
               offset:(CGSize)offset
         shadowRadius:(CGFloat)shadowRadius
              opacity:(float)opacity
            extension:(CGFloat)extension
          shadowColor:(UIColor *)shadowColor{
    self.layer.shadowOpacity = opacity;
    self.layer.shadowOffset = offset;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowRadius = shadowRadius;
    CGRect frame = CGRectMake(0, 0, size.width, size.height);
    frame = CGRectInset(frame, -extension, -extension);
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:frame].CGPath;
}


@end
