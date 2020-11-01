//
//  SelectViewVC.m
//  TableViewScreenshots
//
//  Created by Kevin Jin on 2020/10/31.
//  Copyright © 2020 David Hernandez. All rights reserved.
//

#import "SelectViewVC.h"
#import "CommonViewVC.h"
#import "CommonViewTool.h"
#import "PickerViewVC.h"
#import "TableViewTestVC.h"
#import "CollectionViewTestVC.h"

@interface SelectViewVC ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataArr;

@end

@implementation SelectViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"可视化测试UI控件";
    
    self.dataArr = [NSMutableArray arrayWithObjects:
                    @{@"sectionTitle":@"ListView-列表",
                      @"sectionData":@[@"UITabbleView",@"UICollectionView",@"UIScrollView",@"UIDatePicker",@"UIPickerView",@"UIStackView",]},
                    
                    @{@"sectionTitle":@"TextView-文本",
                    @"sectionData":@[@"UILabel",@"UITextField",@"UITextView",@"UISearchBar"]},
                    
                    @{@"sectionTitle":@"ClickView-点击控件",
                    @"sectionData":@[@"UIButton",@"UISegmentControl",@"UISlider",@"UIPageControl",@"UISwitch"]},
                    
                    @{@"sectionTitle":@"OtherView-其他",
                    @"sectionData":@[@"UIView",@"UIImageView",@"UIWebView",@"UIActivityIndicatorView",@"MKMapView",@"UIToolbar",@"UIProgressView"]}
                    ,nil];

    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.dataArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *arr = [[self.dataArr objectAtIndex:section] objectForKey:@"sectionData"];
    return arr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSArray *arr = [[self.dataArr objectAtIndex:indexPath.section] objectForKey:@"sectionData"];
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld---%ld", indexPath.section, indexPath.row];
    cell.textLabel.text = [arr objectAtIndex:indexPath.row];
//    cell.imageView.image = [UIImage imageNamed:@"1"];
    // 添加右边的小箭头
    // accessoryType 有5种样式：
    // 1.UITableViewCellAccessoryNone 不展示右边accessoryType样式
    // 2.UITableViewCellAccessoryDisclosureIndicator 小箭头
    // 3.UITableViewCellAccessoryCheckmark 对勾
    // 4.UITableViewCellAccessoryDetailButton iOS 7.0后适用详情按钮
    // 5.UITableViewCellAccessoryDetailDisclosureButton
    //    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(15, 0, self.view.frame.size.width, 40)];
    headerView.backgroundColor = UIColor.grayColor;
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, 200, 40)];
    [title setText:[[self.dataArr objectAtIndex:section] objectForKey:@"sectionTitle"]];
    [headerView addSubview:title];
    return headerView;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    CommonViewVC *targetVC = [[CommonViewVC alloc] init];
//    targetVC.viewType = C_UIView;
//    [self.navigationController pushViewController:targetVC animated:YES];
    
//    PickerViewVC *targetVC = [[PickerViewVC alloc] init];
//    [self.navigationController pushViewController:targetVC animated:YES];
//        TableViewTestVC *targetVC = [[TableViewTestVC alloc] init];
//        [self.navigationController pushViewController:targetVC animated:YES];
    
    CollectionViewTestVC *targetVC = [[CollectionViewTestVC alloc] init];
    [self.navigationController pushViewController:targetVC animated:YES];
    
    
}


@end
