//
//  ZMMainViewController.m
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 Zomakezomake. All rights reserved.
//

#import "ZMMainViewController.h"
#import "BaseNavigationController.h"
#import "ZMHomeViewController.h"
#import "ZMMeViewController.h"

@interface ZMMainViewController ()

@end

@implementation ZMMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //首页
    [self addChildVc:[ZMHomeViewController new] title:@"首页" image:@"privatemessage_normal" selectedImage:@"privatemessage_selected"];
    //我的
    [self addChildVc:[ZMMeViewController new] title:@"我的" image:@"me_normal" selectedImage:@"me_selected"];
#if DEBUG
    //显示当前帧率
    [self setupFPSLabel];
#endif
    
}
#pragma mark - FPS Label 显示当前帧率
- (void)setupFPSLabel{
    YYFPSLabel *label = [[YYFPSLabel alloc] init];
    label.frame = CGRectMake(10, kScreenHeight - 49 - 30 - 10, 60, 30);
    [self.view addSubview:label];
}
#pragma mark - 添加子控制器
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    // 设置子控制器的文字(可以设置tabBar和navigationBar的文字)
    childVc.title = title;
    
    // 设置子控制器的tabBarItem图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    // 禁用图片渲染
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //自定义导航
    BaseNavigationController *baseNavVC = [[BaseNavigationController alloc] initWithRootViewController:childVc];
    
    //设置item按钮
    baseNavVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:title image:[[UIImage imageNamed:image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    
    //未选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"0xB0B8BF"],NSFontAttributeName:[UIFont systemFontOfSize:10]} forState:UIControlStateNormal];
    
    //选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHexString:@"0x393E46"],NSFontAttributeName:[UIFont systemFontOfSize:10]} forState:UIControlStateSelected];
    
    [baseNavVC.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -5)];
    baseNavVC.tabBarItem.imageInsets = UIEdgeInsetsMake(-1, 0, 1, 0);
    
    
    // 添加子控制器
    [self addChildViewController:baseNavVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
