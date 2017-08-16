//
//  ZMViewController.m
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 zomake. All rights reserved.
//

#import "ZMViewController.h"

@implementation ZMViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    //禁止自动布局
    if ([self respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#if DEBUG
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    [super motionBegan:motion withEvent:event];
    if (motion == UIEventSubtypeMotionShake) {
        NSLog(@"开始摇一摇");
        [[FLEXManager sharedManager] toggleExplorer];
    }
}
#endif

@end
