//
//  ZMFont.h
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 Zomakezomake. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZMFont : NSObject

+ (instancetype)font;

/**
 *  图标字体 实心
 *
 *  @param size <#size description#>
 *
 *  @return <#return value description#>
 */
+ (UIFont *)iconGlphyFontWithSize:(CGFloat)size;

/**
 *  图标字体 空心
 *
 *  @param size <#size description#>
 *
 *  @return <#return value description#>
 */
+ (UIFont *)iconOutlineFontWithSize:(CGFloat)size;

/**
 *  图标字体 实心 Mini
 *
 *  @param size <#size description#>
 *
 *  @return <#return value description#>
 */
+ (UIFont *)iconMiniFontWithSize:(CGFloat)size;

@end
