//
//  UILabel+SYExtension.m
//  ShiYingPlayer
//
//  Created by yxf on 2020/11/28.
//

#import "UILabel+KYExtension.h"

@implementation UILabel (KYExtension)

+(instancetype)labelWithFont:(UIFont *)font textColor:(UIColor *)color{
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.textColor = color;
    return label;
}

@end
