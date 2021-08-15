//
//  KYBaseDefines.h
//  Pods
//
//  Created by yxf on 2021/5/23.
//

#ifndef KYBaseDefines_h
#define KYBaseDefines_h

#define KYWeakSelf __weak typeof(self) weakSelf = self;
#define KYStrongSelf __strong typeof(weakSelf) strongSelf = weakSelf;

//坐标
#define KYWindowView [UIApplication sharedApplication].keyWindow
#define KYSCREENBOUNS  [UIScreen mainScreen].bounds
#define KYSCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define KYSCREENHEIGHT  [UIScreen mainScreen].bounds.size.height
#define KYSCREENSCALE  [UIScreen mainScreen].scale

#define KYISNORNALSCREEN  (KYSCREENHEIGHT < 800)
#define KYSAFEBOTTOM  (KYISNORNALSCREEN ? 0 : 34)
#define KYTOPBARHEIGTH  [[UIApplication sharedApplication] statusBarFrame].size.height
#define KYNAVIHEIGHT  (44 + KYTOPBARHEIGTH)
#define KYTABBARHEIGHT  (KYISNORNALSCREEN ? 49 : (49 + KYSAFEBOTTOM))

#define KYHORIZONFIT(x) ((x) * KYSCREENWIDTH / 375.0)
#define KYVERTICALFIT(y) ((y) * KYSCREENHEIGHT / 667.0)

//rbg转UIColor(16进制)
#define KYRGB16(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1]
#define KYRGB16_WITH_ALPHA_COMPONENT(rgbValue, alpha) [KYRGB16(rgbValue) colorWithAlphaComponent:alpha]
#define KYRGBAColor(r, g, b, a) [UIColor colorWithRed:(r) / 255.0 green:(g) / 255.0 blue:(b) / 255.0 alpha:(a) / 1.0]
#define KYRGBColor(r, g, b) KYRGBAColor((r), (g), (b), 1.0)
#define KYRGBWhiteColor(white, a) [UIColor colorWithWhite:(white) alpha:(a)]
#define KYRandomColor KYRGBColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#define SYBlackColor KYRGB16(0x333333)
#define SYGreyColor KYRGB16(0xd8d8d8)

//图片
#define KYImageName(name) [UIImage imageNamed:name]

#endif /* KYBaseDefines_h */
