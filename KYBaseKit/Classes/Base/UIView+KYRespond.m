//
//  UIView+SYRespond.m
//  ShiYingPlayer
//
//  Created by yxf on 2021/3/12.
//

#import "UIView+KYRespond.h"

@implementation UIView (KYRespond)

-(UIViewController *)ky_bindVc{
    UIResponder *res = self.nextResponder;
    while (res) {
        if ([res isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)res;
        }
        res = res.nextResponder;
    }
    return nil;
}

@end
