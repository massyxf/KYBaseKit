#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "KYBaseDefines.h"
#import "NSString+Hash.h"
#import "NSString+KYExtension.h"
#import "UIImage+KYExtension.h"
#import "UILabel+KYExtension.h"
#import "UIView+KYRadius.h"
#import "UIView+KYRespond.h"
#import "UIView+KYViewFrame.h"

FOUNDATION_EXPORT double KYBaseKitVersionNumber;
FOUNDATION_EXPORT const unsigned char KYBaseKitVersionString[];

