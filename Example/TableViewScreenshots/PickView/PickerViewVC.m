//
//  PickerViewVC.m
//  TableViewScreenshots
//
//  Created by Kevin Jin on 2020/11/2.
//  Copyright © 2020 David Hernandez. All rights reserved.
//

#import "PickerViewVC.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
@interface PickerViewVC ()<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic, strong) UIPickerView    *m_pickerView;
@property (nonatomic, strong) NSMutableArray  *m_yearArray;
@property (nonatomic, strong) NSMutableArray  *m_monthArray;

@end

@implementation PickerViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.title = @"UIPickerView简单介绍";
    
    self.m_yearArray  = [NSMutableArray arrayWithArray:@[@"2014年",@"2015年"]];
    self.m_monthArray = [NSMutableArray arrayWithArray:@[@"1月",@"2月",@"3月",@"4月",@"5月",@"6月",@"7月",@"8月",@"9月",@"10月",@"11月",@"12月"]];

    // 看网上的教程说UIPickerView的高度是一定的,然而我测试,高度还是由你设定的frame决定的,并没有什么固定值
    self.m_pickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height - 200, self.view.frame.size.width, 200)];
    [self.view addSubview:self.m_pickerView];
    
    self.m_pickerView.dataSource = self;
    self.m_pickerView.delegate   = self;
    
    // iOS7之后没有效果了,参见https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/UIKitUICatalog/UIPickerView.html
    self.m_pickerView.showsSelectionIndicator = YES;
    
    // 跳转到利用Button,将PickerView 作为 InputView 的控制器
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    
    btn.frame = CGRectMake((self.view.frame.size.width - 200)/2.0, 150, 200, 40);
    btn.backgroundColor = [UIColor grayColor];
    [btn setTitle:@"Button调出PickerView" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushToSecondVC) forControlEvents:UIControlEventTouchUpInside];
    
    // 跳转到利用Label,将PickerView 作为 InputView 的控制器
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn2];
    
    btn2.frame = CGRectMake((SCREEN_WIDTH - 200)/2.0, 150 + 40 + 40, 200, 40);
    btn2.backgroundColor = [UIColor grayColor];
    [btn2 setTitle:@"Label调出PickerView" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pushToThirdVC) forControlEvents:UIControlEventTouchUpInside];

}

- (void)pushToSecondVC {

    SecondViewController *secondVC = [SecondViewController new];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)pushToThirdVC {

    ThirdViewController *thirdVC = [ThirdViewController new];
    [self.navigationController pushViewController:thirdVC animated:YES];
}


#pragma mark - UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {

    return 2;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {

    if (component == 0) {
        
        return self.m_yearArray.count;
        
    } else {
    
        return self.m_monthArray.count;
    }
}

#pragma mark - UIPickerViewDelegate
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {

    return self.view.frame.size.width/2.0;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component __TVOS_PROHIBITED {

    return 40;
}


- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {

    if (component == 0) {
        
        return self.m_yearArray[row];
        
    } else {
    
        return self.m_monthArray[row];
    }
}
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view  {
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    
    if (component == 0) {
        
        label.text = self.m_yearArray[row];
        
    } else {
        
        label.text = self.m_monthArray[row];
    }
    
    
    return label;
}

@end
