//
//  ZMFont.m
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 Zomakezomake. All rights reserved.
//

#import "ZMFont.h"

@implementation ZMFont

+ (instancetype)font{
    static ZMFont *font;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        font = [[ZMFont alloc]init];
    });
    return font;
}

+ (UIFont *)iconGlphyFontWithSize:(CGFloat)size{
    return [UIFont fontWithName:@"icomoon-glyph" size:size];
}

+ (UIFont *)iconMiniFontWithSize:(CGFloat)size{
    return [UIFont fontWithName:@"icomoon-mini" size:size];
}
//字体2.9之后，字体名称变成了 nucleo-outline,2.4是 icomoon
+ (UIFont *)iconOutlineFontWithSize:(CGFloat)size{
    return [UIFont fontWithName:@"icomoon" size:size];
}

@end
