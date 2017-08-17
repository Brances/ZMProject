//
//  ZMButtonViewController.m
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 Zomakezomake. All rights reserved.
//

#import "ZMButtonViewController.h"

@interface ZMButtonViewController ()

@end

@implementation ZMButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = NSStringFromClass([self class]);
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 54, 30);
    
    [rightButton setTitle:@"FLEX" forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(clickRightButton:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightBarButtomItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightBarButtomItem;
    
    
    [self setupUI];
}

- (void)setupUI{
    //图标在左
    ZMButton *iconButtonLeft = [[ZMButton alloc] initWithTitle:@"文字在右" icon:@"\U0000e6df\U0000ea9b" iconType:ButtonIconTypeLeft];
    iconButtonLeft.margin = 10;
    iconButtonLeft.titleColor = [UIColor colorWithHexString:@"#DC143C"];
    iconButtonLeft.tag = 1;
    [self.view addSubview:iconButtonLeft];
    [iconButtonLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(20);
        make.width.mas_equalTo(120);
        make.centerX.mas_equalTo(self.view);
    }];
    [iconButtonLeft.superview layoutIfNeeded];
    [iconButtonLeft setupUI];
    [iconButtonLeft addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    //图标在右
    ZMButton *iconButtonRight = [[ZMButton alloc] initWithTitle:@"文字在左" icon:@"\U0000e6df" iconType:ButtonIconTypeNormal];
    [self.view addSubview:iconButtonRight];
    [iconButtonRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(iconButtonLeft.mas_bottom).with.offset(20);
        make.centerX.mas_equalTo(self.view);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(40);
    }];
    [iconButtonRight.superview layoutIfNeeded];
    [iconButtonRight setupUI];
    [iconButtonRight addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    //图标在上
    ZMButton *iconButtonTop = [[ZMButton alloc] initWithTitle:@"文字在下" icon:@"\U0000e6df" iconType:ButtonIconTypeTop];
    
    [self.view addSubview:iconButtonTop];
    [iconButtonTop mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(iconButtonRight.mas_bottom).with.offset(20);
        make.centerX.mas_equalTo(self.view);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(60);
    }];
    [iconButtonTop.superview layoutIfNeeded];
    [iconButtonTop setupUI];
    [iconButtonTop addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    //图标在下
    ZMButton *iconButtonBottom = [[ZMButton alloc] initWithTitle:@"文字在上" icon:@"\U0000e6df" iconType:ButtonIconTypeBottom];
    [self.view addSubview:iconButtonBottom];
    [iconButtonBottom mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(iconButtonTop.mas_bottom).with.offset(20);
        make.centerX.mas_equalTo(self.view);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(60);
    }];
    [iconButtonBottom.superview layoutIfNeeded];
    [iconButtonBottom setupUI];
    [iconButtonBottom addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    
    
}
- (void)clickRightButton:(UIButton *)sender{
    [[FLEXManager sharedManager] toggleExplorer];
}
#pragma mark - 动态改变按钮文字和宽度
- (void)clickButton:(ZMButton *)sender{
    //NSInteger index = sender.tag;
    NSInteger arc =arc4random_uniform(1000000);
    
    [sender setButtonTitle:[NSString stringWithFormat:@"%ld我是新标题",arc]];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
