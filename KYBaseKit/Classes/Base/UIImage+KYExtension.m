//
//  UIImage+SYExtension.m
//  ShiYingPlayer
//
//  Created by yxf on 2020/11/28.
//

#import "UIImage+KYExtension.h"

@implementation UIImage (KYExtension)

//给我一种颜色，一个尺寸，我给你返回一个UIImage
+(UIImage *)imageFromContextWithColor:(UIColor *)color size:(CGSize)size{
    
    CGRect rect=(CGRect){{0.0f,0.0f},size};
    
    //开启一个图形上下文
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0f);
    
    //获取图形上下文
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    
    CGContextFillRect(context, rect);
    
    //获取图像
    UIImage *image=UIGraphicsGetImageFromCurrentImageContext();
    
    //关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (NSData *)zipNSDataWithImage:(UIImage *)sourceImage {
    //进行图像尺寸的压缩

    CGSize imageSize = sourceImage.size;//取出要压缩的image尺寸

    CGFloat width = imageSize.width;    //图片宽度

    CGFloat height = imageSize.height;  //图片高度

    //1.宽高大于1280(宽高比不按照2来算，按照1来算)

    if (width>1280 && height>1280) {

        if (width>height) {

            CGFloat scale = height/width;

            width = 1280;

            height = width*scale;

        }else{

            CGFloat scale = width/height;

            height = 1280;

            width = height*scale;

        }

        //2.宽大于1280高小于1280

    }else if(width>1280 && height<1280){

        CGFloat scale = height/width;

        width = 1280;

        height = width*scale;

        //3.宽小于1280高大于1280

    }else if(width<1280 && height>1280){

        CGFloat scale = width/height;

        height = 1280;

        width = height*scale;

    }

    UIGraphicsBeginImageContext(CGSizeMake(width, height));

    [sourceImage drawInRect:CGRectMake(0,0,width,height)];

    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    
    //进行图像的画面质量压缩
    NSData *data=UIImageJPEGRepresentation(newImage, 0.9);

    return data;
}

@end
