//
//  TableViewTestVC.m
//  TableViewScreenshots
//
//  Created by Kevin Jin on 2020/11/2.
//  Copyright © 2020 David Hernandez. All rights reserved.
//

#import "TableViewTestVC.h"
#import "CouponRecordDetailTCell.h"
@interface TableViewTestVC ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableview;

@property (nonatomic, strong) NSMutableArray *dataList;
@end

@implementation TableViewTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configBaseUI];
}

- (void)configBaseUI
{
    self.title = @"奖励详情";
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.tableview];
}
#pragma mark -- UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataList.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 120;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CouponRecordDetailTCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CouponRecordDetailTCell" forIndexPath:indexPath];
        return cell;
    
    return nil;
    
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30)];
    headerview.backgroundColor = UIColor.greenColor;
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 100, 30)];
    lab.text = [NSString stringWithFormat:@"编号%ld",section];
    [headerview addSubview:lab];
    return headerview;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 5)];
    footerView.backgroundColor = UIColor.grayColor;
    return footerView;
}
#pragma mark -- UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    AwardsDetailVC *awardsDetailVC = [[AwardsDetailVC alloc] init];
//
//    [self.navigationController pushViewController:awardsDetailVC animated:YES];
    
}

#pragma mark -- Getter&Setter
- (UITableView *)tableview
{
    if (!_tableview) {
        _tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 64,  [UIScreen mainScreen].bounds.size.width,  [UIScreen mainScreen].bounds.size.height - 64) style:UITableViewStyleGrouped];
        _tableview.backgroundColor = UIColor.whiteColor;
        _tableview.delegate = self;
        _tableview.dataSource = self;
        _tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_tableview registerNib:[UINib nibWithNibName:@"CouponRecordDetailTCell" bundle:nil] forCellReuseIdentifier:@"CouponRecordDetailTCell"];
    }
    return _tableview;
}

- (NSMutableArray *)dataList
{
    if (!_dataList) {
        _dataList = [[NSMutableArray alloc] initWithObjects:@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1", nil];
        
    }
    return _dataList;
}

@end
