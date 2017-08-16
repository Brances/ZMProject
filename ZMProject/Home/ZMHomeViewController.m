//
//  ZMHomeViewController.m
//  ZMProject
//
//  Created by ZOMAKE on 2017/8/16.
//  Copyright © 2017年 Zomakezomake. All rights reserved.
//

#import "ZMHomeViewController.h"
#import "ZMButtonViewController.h"

@interface ZMHomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) YYTableView   *tableView;
@property (nonatomic, strong) NSArray       *dataArray;
@end

@implementation ZMHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = @[
                       @"ZMButton字体图标",
                      ];
    [self setupUI];
}

- (void)setupUI{
    self.tableView = [YYTableView new];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    //去掉多余的空数据行
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.mas_offset(0);
    }];
    
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[YYTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [self.dataArray safeObjectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row < self.dataArray.count) {
        if (indexPath.row == 0) {
            ZMButtonViewController *vc = [[ZMButtonViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
