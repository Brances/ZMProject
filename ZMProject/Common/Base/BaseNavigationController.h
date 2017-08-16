//
//  BaseNavigationController.h
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 Zomakezomake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseNavigationController : UINavigationController

@property (nonatomic, assign) UIStatusBarStyle statusBarStyle;

- (void)showNavBottomLine;
- (void)hideNavBottomLine;

@end
