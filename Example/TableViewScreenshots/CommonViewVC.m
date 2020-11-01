//
//  CommonViewVC.m
//  TableViewScreenshots
//
//  Created by Kevin Jin on 2020/10/31.
//  Copyright © 2020 David Hernandez. All rights reserved.
//

#import "CommonViewVC.h"
#import <Masonry.h>
#import <WebKit/WebKit.h>
#define Screen_Width [UIScreen mainScreen].bounds.size.width
#define Screen_Height [UIScreen mainScreen].bounds.size.height;
@interface CommonViewVC ()
@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) NSTimer* timer;

@property (nonatomic, strong) UIProgressView *progressView;
@property (nonatomic, strong) UIProgressView *progressView2;
@end

@implementation CommonViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    //    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectZero];
    //    self.scrollView.backgroundColor = UIColor.greenColor;
    //    [self.view addSubview:self.scrollView];
    //    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.top.left.bottom.right.equalTo(self.view);
    //    }];
    
    
    [self setUPUI];
}

- (void)setUPUI
{
    switch (self.viewType) {
        case C_UIView:
        {
            //            [self showUIView];
            //            [self showUIImageView];
            //            [self showUIWebView];
            //            [self showWKWebView];
            //            [self showUIActivityIndicatorView];
            //            [self showUIToolbar];
            //            [self showUIProgressView];
            //            [self showUIButton];
            //            [self showUISegmentControl];
            //            [self showUISlider];
            //            [self showUIPageControl];
            //            [self showUISwitch];
            //            [self showUILabel];
//            [self showUITextField];
//            [self showUITextView];
//            [self showUIStackView];
//            [self showUISearchBar];
            [self showUIDatePicker];
        }
            break;
        default:
            break;
    }
}

- (void)showUIView
{
    UIView *view1 = [CommonViewTool new_UIView_WirhSupview:self.view];
    view1.backgroundColor = UIColor.darkGrayColor;
    
    UIView *view2 = [CommonViewTool new_UIView_WirhSupview:self.view];
    view2.backgroundColor = UIColor.brownColor
    ;
    UIView *view3 = [CommonViewTool new_UIView_WirhSupview:self.view];
    view3.backgroundColor = UIColor.orangeColor;
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(70);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(view2.mas_left).offset(15);
        make.width.mas_equalTo(view2.mas_width);
        make.height.mas_equalTo(50);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(70);
        make.left.mas_equalTo(view1.mas_right).offset(15);
        make.right.mas_equalTo(view3.mas_left).offset(15);
        make.width.mas_equalTo(view3.mas_width);
        make.height.mas_equalTo(50);
    }];
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(70);
        make.left.mas_equalTo(view2.mas_right).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.width.mas_equalTo(view1.mas_width);
        make.height.mas_equalTo(50);
    }];
    
    
    UIView *view4 = [CommonViewTool new_UIView_WirhSupview:self.view];
    view4.backgroundColor = UIColor.orangeColor;
    
    UIView *view5 = [CommonViewTool new_UIView_WirhSupview:self.view];
    view5.backgroundColor = UIColor.brownColor
    ;
    UIView *view6 = [CommonViewTool new_UIView_WirhSupview:self.view];
    view6.backgroundColor = UIColor.darkGrayColor;
    
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view3.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(30);
    }];
    [view5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view4.mas_bottom);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(30);
    }];
    [view6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view5.mas_bottom);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(30);
    }];
    
    
    UIView *view7 = [CommonViewTool new_UIView_WirhSupview:self.view];
    view7.backgroundColor = UIColor.orangeColor;
    
    UIView *view8 = [CommonViewTool new_UIView_WirhSupview:view7];
    view8.backgroundColor = UIColor.brownColor;
    
    UIView *view9 = [CommonViewTool new_UIView_WirhSupview:view8];
    view9.backgroundColor = UIColor.darkGrayColor;
    
    [view7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view6.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(view7.mas_width);
    }];
    [view8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view7.mas_top).offset(20);
        make.left.mas_equalTo(view7.mas_left).offset(50);
        make.right.mas_equalTo(view7.mas_right).offset(-15);
        make.height.mas_equalTo(view8.mas_width);
    }];
    [view9 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view8.mas_top).offset(20);
        make.left.mas_equalTo(view8.mas_left).offset(50);
        make.right.mas_equalTo(view8.mas_right).offset(-15);
        make.height.mas_equalTo(view9.mas_width);
    }];
}

- (void)showUIImageView
{
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectZero];
    img.backgroundColor = UIColor.cyanColor;
    [self.view addSubview:img];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(70);
        make.left.mas_equalTo(self.view.mas_left).offset(50);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(100);
    }];
    
    UIImageView *img1 = [[UIImageView alloc] initWithFrame:CGRectZero];
    [img1 setImage:[UIImage imageNamed:@"testImage"]];
    img1.backgroundColor = UIColor.cyanColor;
    [self.view addSubview:img1];
    [img1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(50);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(100);
    }];
    
    UIImageView *img2 = [[UIImageView alloc] initWithFrame:CGRectZero];
    img2.clipsToBounds = YES;
    img2.layer.cornerRadius = 50;
    [img2 setImage:[UIImage imageNamed:@"testImage"]];
    img2.backgroundColor = UIColor.cyanColor;
    [self.view addSubview:img2];
    [img2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img1.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(50);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(100);
    }];
    
}

- (void)showUIWebView
{
    UIWebView *webview = [[UIWebView alloc] initWithFrame:CGRectZero];
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.taobao.com"]]];
    [self.view addSubview:webview];
    [webview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.equalTo(self.view);
    }];
}

- (void)showWKWebView
{
    
    
    WKWebView *webview = [[WKWebView alloc] initWithFrame:CGRectZero];
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.jd.com"]]];
    [self.view addSubview:webview];
    [webview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.bottom.right.equalTo(self.view);
    }];
}

- (void)showUIActivityIndicatorView
{
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectZero];
    activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    [self.view addSubview:activityIndicator];
    //设置小菊花颜色
    activityIndicator.color = [UIColor redColor];
    //设置背景颜色
    activityIndicator.backgroundColor = [UIColor cyanColor];
    //刚进入这个界面会显示控件，并且停止旋转也会显示，只是没有在转动而已，没有设置或者设置为YES的时候，刚进入页面不会显示
    activityIndicator.hidesWhenStopped = true;
    //开始旋转
    [activityIndicator startAnimating];
    [activityIndicator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(self.view).offset(80);
        make.width.height.mas_equalTo(80);
    }];
    
    UIActivityIndicatorView *activityIndicator2 = [[UIActivityIndicatorView alloc] initWithFrame:CGRectZero];
    activityIndicator2.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhite;
    [self.view addSubview:activityIndicator2];
    //设置小菊花颜色
    activityIndicator2.color = [UIColor redColor];
    //设置背景颜色
    activityIndicator2.backgroundColor = [UIColor cyanColor];
    //刚进入这个界面会显示控件，并且停止旋转也会显示，只是没有在转动而已，没有设置或者设置为YES的时候，刚进入页面不会显示
    activityIndicator2.hidesWhenStopped = true;
    //开始旋转
    [activityIndicator2 startAnimating];
    [activityIndicator2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(activityIndicator.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(80);
        make.width.height.mas_equalTo(80);
    }];
    
    UIActivityIndicatorView *activityIndicator3 = [[UIActivityIndicatorView alloc] initWithFrame:CGRectZero];
    activityIndicator3.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    [self.view addSubview:activityIndicator3];
    //设置小菊花颜色
    activityIndicator3.color = [UIColor redColor];
    //设置背景颜色
    activityIndicator3.backgroundColor = [UIColor cyanColor];
    //刚进入这个界面会显示控件，并且停止旋转也会显示，只是没有在转动而已，没有设置或者设置为YES的时候，刚进入页面不会显示
    activityIndicator3.hidesWhenStopped = true;
    //开始旋转
    [activityIndicator3 startAnimating];
    [activityIndicator3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(activityIndicator2.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(80);
        make.width.height.mas_equalTo(80);
    }];
    
    UIActivityIndicatorView *activityIndicator4 = [[UIActivityIndicatorView alloc] initWithFrame:CGRectZero];
    activityIndicator4.activityIndicatorViewStyle = UIActivityIndicatorViewStyleLarge;
    [self.view addSubview:activityIndicator4];
    //设置小菊花颜色
    activityIndicator4.color = [UIColor redColor];
    //设置背景颜色
    activityIndicator4.backgroundColor = [UIColor cyanColor];
    //刚进入这个界面会显示控件，并且停止旋转也会显示，只是没有在转动而已，没有设置或者设置为YES的时候，刚进入页面不会显示
    activityIndicator4.hidesWhenStopped = true;
    //开始旋转
    [activityIndicator4 startAnimating];
    [activityIndicator4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view).offset(200);
        make.width.height.mas_equalTo(80);
    }];
    
    UIActivityIndicatorView *activityIndicator5 = [[UIActivityIndicatorView alloc] initWithFrame:CGRectZero];
    activityIndicator5.activityIndicatorViewStyle = UIActivityIndicatorViewStyleMedium;
    [self.view addSubview:activityIndicator5];
    //设置小菊花颜色
    activityIndicator5.color = [UIColor redColor];
    //设置背景颜色
    activityIndicator5.backgroundColor = [UIColor cyanColor];
    //刚进入这个界面会显示控件，并且停止旋转也会显示，只是没有在转动而已，没有设置或者设置为YES的时候，刚进入页面不会显示
    activityIndicator5.hidesWhenStopped = true;
    //开始旋转
    [activityIndicator5 startAnimating];
    [activityIndicator5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(activityIndicator4.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(200);
        make.width.height.mas_equalTo(80);
    }];
}

- (void)showUIToolbar
{
    //    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectZero]; //初始化
    //    toolbar.tintColor=[UIColor blackColor]; //设置颜色
    //    [self.view addSubview:toolbar];// 添加到view
    //    [toolbar mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.top.mas_equalTo(self.view.mas_top).offset(100);
    //        make.left.mas_equalTo(self.view.mas_left).offset(80);
    //        make.width.mas_equalTo(100);
    //        make.height.mas_equalTo(40);
    //    }];
    
    //创建toolbar
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame:CGRectZero];
    
    //创建barbuttonitem
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"收藏" style:UIBarButtonItemStyleBordered target:self action:@selector(test)];
    
    //创建barbuttonitem
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:nil] ;
    
    //创建一个segmentController
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"牛扒", @"排骨", nil] ] ;
    
    //设置style
    [seg setSegmentedControlStyle:UISegmentedControlSegmentCenter];
    
    
    [seg addTarget:self action:@selector(test) forControlEvents:UIControlEventValueChanged];
    
    //创建一个内容是view的uibarbuttonitem
    UIBarButtonItem *itemSeg = [[UIBarButtonItem alloc] initWithCustomView:seg] ;
    
    //创建barbuttonitem,样式是flexible,这个种barbuttonitem用于两个barbuttonitem之间
    //调整两个item之间的距离.flexible表示距离是动态的,fixed表示是固定的
    UIBarButtonItem *flexible = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil] ;
    
    //把item添加到toolbar里
    [toolBar setItems:[NSArray arrayWithObjects:item1,flexible,itemSeg,flexible,item2, nil] animated:YES];
    
    //把toolbar添加到view上
    [self.view addSubview:toolBar];
    [toolBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.left.right.mas_equalTo(self.view);
        make.height.mas_equalTo(40);
    }];
}


- (void)showUIProgressView
{
    // 进度条初始化
    UIProgressView *progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    // 进度条的底色
    progressView.trackTintColor = [UIColor colorWithRed:199/255.0 green:198/255.0 blue:198/255.0 alpha:1];
    progressView.layer.masksToBounds = YES;
    progressView.layer.cornerRadius = 10;
    //设置进度条的当前值，范围：0~1；
    progressView.progress = 0.2;
    self.progressView = progressView;
    [self.view addSubview:progressView];
    [progressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.left.mas_equalTo(self.view).offset(20);
        make.right.mas_equalTo(self.view).offset(-20);
        make.height.mas_equalTo(20);
    }];
    
    // 进度条初始化
    UIProgressView *progressView2 = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleBar];
    // 进度条的底色
    progressView2.trackTintColor = [UIColor colorWithRed:222/255.0 green:211/255.0 blue:190/255.0 alpha:1];
    progressView2.layer.masksToBounds = YES;
    progressView2.layer.cornerRadius = 10;
    //设置进度条的当前值，范围：0~1；
    progressView2.progress = 0.5;
    self.progressView2 = progressView2;
    [self.view addSubview:progressView2];
    [progressView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(200);
        make.left.mas_equalTo(self.view).offset(20);
        make.right.mas_equalTo(self.view).offset(-20);
        make.height.mas_equalTo(20);
    }];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(changeProgress) userInfo:nil repeats:YES];
    
}

- (void)showUIButton
{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setTitle:@"Custom" forState:UIControlStateNormal];
    button1.backgroundColor = UIColor.grayColor;
    [self.view addSubview:button1];
    [button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button2 setTitle:@"System" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    button2.backgroundColor = UIColor.grayColor;
    [button2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button1.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [button3 setTitle:@"Disclosure" forState:UIControlStateNormal];
    [self.view addSubview:button3];
    button3.backgroundColor = UIColor.grayColor;
    [button3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button2.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeInfoLight];
    [button4 setTitle:@"InfoLight" forState:UIControlStateNormal];
    [self.view addSubview:button4];
    button4.backgroundColor = UIColor.grayColor;
    [button4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button3.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [button5 setTitle:@"InfoDark" forState:UIControlStateNormal];
    [self.view addSubview:button5];
    button5.backgroundColor = UIColor.grayColor;
    [button5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button4.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
    
    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [button6 setTitle:@"ContactAdd" forState:UIControlStateNormal];
    [self.view addSubview:button6];
    button6.backgroundColor = UIColor.grayColor;
    [button6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button5.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeClose];
    [button7 setTitle:@"TypeClose" forState:UIControlStateNormal];
    [self.view addSubview:button7];
    button7.backgroundColor = UIColor.grayColor;
    [button7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button6.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
}

- (void)showUISegmentControl
{
    //先生成存放标题的数据
    NSArray *array = [NSArray arrayWithObjects:@"家具",@"灯饰",@"建材",@"装饰", nil];
    //初始化UISegmentedControl
    UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:array];
    //设置frame
    //添加到视图
    [self.view addSubview:segment];
    [segment mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(20);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        make.height.mas_equalTo(30);
    }];
}
- (void)showUISlider
{
    /// 创建Slider 设置Frame
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectZero];
    /// 添加Slider
    [self.view addSubview:slider];
    [slider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(20);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        make.height.mas_equalTo(50);
    }];
    
    /// 属性配置
    // minimumValue  : 当值可以改变时，滑块可以滑动到最小位置的值，默认为0.0
    slider.minimumValue = 0.0;
    // maximumValue : 当值可以改变时，滑块可以滑动到最大位置的值，默认为1.0
    slider.maximumValue = 100.0;
    // 当前值，这个值是介于滑块的最大值和最小值之间的，如果没有设置边界值，默认为0-1；
    slider.value = 50;
    
    // continuous : 如果设置YES，在拖动滑块的任何时候，滑块的值都会改变。默认设置为YES
    [slider setContinuous:YES];
    
    
    // minimumTrackTintColor : 小于滑块当前值滑块条的颜色，默认为蓝色
    slider.minimumTrackTintColor = [UIColor redColor];
    // maximumTrackTintColor: 大于滑块当前值滑块条的颜色，默认为白色
    slider.maximumTrackTintColor = [UIColor blueColor];
    // thumbTintColor : 当前滑块的颜色，默认为白色
    slider.thumbTintColor = [UIColor yellowColor];
    
    // minimumTrackTintColor : 小于滑块当前值滑块条的颜色，默认为蓝色
    slider.minimumTrackTintColor = [UIColor redColor];
    // maximumTrackTintColor: 大于滑块当前值滑块条的颜色，默认为白色
    slider.maximumTrackTintColor = [UIColor blueColor];
    // thumbTintColor : 当前滑块的颜色，默认为白色
    slider.thumbTintColor = [UIColor yellowColor];
    
    /**  PS: 设置图片的优先级高于设置tintColor
     
     /// 设置滑块条最大值处设置的图片在不同的状态
     [slider setMaximumTrackImage:MHImageNamed(@"slider_bg") forState:UIControlStateNormal];
     /// 设置滑块条最小值处设置的图片在不同的状态
     [slider setMinimumTrackImage:MHImageNamed(@"slider_bg") forState:UIControlStateNormal];
     /// 设置滑块图片在不同的状态
     [slider setThumbImage:MHImageNamed(@"slider_thumb") forState:UIControlStateNormal];
     [slider setThumbImage:MHImageNamed(@"slider_thumb") forState:UIControlStateHighlighted];
     
     */
    
    /// currentMaximumTrackImage : 当前（状态）滑块条最大值处设置的图片
    /// currentMinimumTrackImage : 当前（状态）滑块条最小值处设置的图片
    /// currentThumbImage: 当前（状态）滑块的图片
    /// - (nullable UIImage *)thumbImageForState:(UIControlState)state; /// 获取某个（状态）滑块的图片
    /// - (nullable UIImage *)minimumTrackImageForState:(UIControlState)state; /// 获取某个（状态）滑块条最小值处设置的图片
    /// - (nullable UIImage *)maximumTrackImageForState:(UIControlState)state; /// 获取某个（状态）滑块条最大值处设置的图片
    
}

- (void)showUIPageControl
{
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectZero];
    pageControl.numberOfPages = 10;
    pageControl.currentPage = 0;
    pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    pageControl.pageIndicatorTintColor = [UIColor greenColor];
    //    pageControl.hidesForSinglePage = YES;
    //    pageControl.defersCurrentPageDisplay = YES;
    [pageControl updateCurrentPageDisplay];
    [self.view addSubview:pageControl];
    [pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(20);
        make.right.mas_equalTo(self.view.mas_right).offset(-20);
        make.height.mas_equalTo(80);
    }];
    //    [pageControl addTarget:self action:@selector(valueChanged:) forControlEvents:(UIControlEventValueChanged)];
}


- (void)showUISwitch
{
    //创建一个开关对象
    //继承于UIView的
    UISwitch *myswitch = [[UISwitch alloc] initWithFrame:CGRectZero];
    
    //开关状态设置属性
    //YES:开启状态
    //NO:关闭状态
    myswitch.on=YES;
    
    [self.view addSubview:myswitch];
    
    //设置开启状态的风格颜色
    [myswitch setOnTintColor:[UIColor orangeColor]];
    
    //设置开关圆按钮的风格颜色
    [myswitch setThumbTintColor:[UIColor blueColor]];
    
    //设置整体风格颜色,按钮的白色是整个父布局的背景颜色
    [myswitch setTintColor:[UIColor greenColor]];
    
    [myswitch mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(40);
    }];
}

- (void)showUILabel
{
    UILabel *view4 = [CommonViewTool new_UILabel_WirhSupview:self.view];
    view4.backgroundColor = UIColor.orangeColor;
    
    UILabel *view5 = [CommonViewTool new_UILabel_WirhSupview:self.view];
    view5.backgroundColor = UIColor.brownColor
    ;
    UILabel *view6 = [CommonViewTool new_UILabel_WirhSupview:self.view];
    view6.backgroundColor = UIColor.darkGrayColor;
    
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(30);
    }];
    [view5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view4.mas_bottom);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(30);
    }];
    [view6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view5.mas_bottom);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(30);
    }];
    
    
    UILabel *view7 = [CommonViewTool new_UILabel_WirhSupview:self.view];
    view7.backgroundColor = UIColor.orangeColor;
    
    UILabel *view8 = [CommonViewTool new_UILabel_WirhSupview:view7];
    view8.backgroundColor = UIColor.brownColor;
    
    UILabel *view9 = [CommonViewTool new_UILabel_WirhSupview:view8];
    view9.backgroundColor = UIColor.darkGrayColor;
    
    [view7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view6.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(view7.mas_width);
    }];
    [view8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view7.mas_top).offset(20);
        make.left.mas_equalTo(view7.mas_left).offset(50);
        make.right.mas_equalTo(view7.mas_right).offset(-15);
        make.height.mas_equalTo(view8.mas_width);
    }];
    [view9 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view8.mas_top).offset(20);
        make.left.mas_equalTo(view8.mas_left).offset(50);
        make.right.mas_equalTo(view8.mas_right).offset(-15);
        make.height.mas_equalTo(view9.mas_width);
    }];
}

- (void)showUITextField
{
    
    
    
    UITextField *text1 = [[UITextField alloc] initWithFrame:CGRectZero];
    text1.placeholder = @"请输入文字";
    text1.textColor = [UIColor redColor];
    text1.font = [UIFont systemFontOfSize:14];
    text1.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:text1];
    [text1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(40);
    }];
    
    UITextField *text2 = [[UITextField alloc] initWithFrame:CGRectZero];
    text2.placeholder = @"请输入文字";
    text2.background = [UIImage imageNamed:@"testImage"];
    text2.textColor = [UIColor redColor];
    text2.font = [UIFont systemFontOfSize:14];
    text2.textAlignment = NSTextAlignmentLeft;
    text2.layer.borderWidth = 0.5;
    text2.clearButtonMode = UITextFieldViewModeAlways;
    text2.layer.borderColor = UIColor.grayColor.CGColor;
    [self.view addSubview:text2];
    [text2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(text1.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(40);
    }];
    
    UITextField *text3 = [[UITextField alloc] initWithFrame:CGRectZero];
    text3.placeholder = @"请输入文字";
    text3.textColor = [UIColor redColor];
    text3.font = [UIFont systemFontOfSize:14];
    text3.textAlignment = NSTextAlignmentLeft;
    text3.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 20, 20)];
    imageView.image = [UIImage imageNamed:@"testImage1"];
    text3.leftView = imageView;
    text3.layer.borderWidth = 0.5;
    text3.layer.borderColor = UIColor.grayColor.CGColor;
    text3.clearButtonMode = UITextFieldViewModeAlways;
    [self.view addSubview:text3];
    [text3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(text2.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(40);
    }];
    
    UITextField *text4 = [[UITextField alloc] initWithFrame:CGRectZero];
    text4.placeholder = @"请输入文字";
    text4.textColor = [UIColor redColor];
    text4.font = [UIFont systemFontOfSize:14];
    text4.textAlignment = NSTextAlignmentLeft;
    text4.rightViewMode = UITextFieldViewModeAlways;
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 20, 20)];
    imageView1.image = [UIImage imageNamed:@"testImage1"];
    text4.rightView = imageView1;
    text4.layer.borderWidth = 0.5;
    text4.clearButtonMode = UITextFieldViewModeAlways;
    text4.layer.borderColor = UIColor.grayColor.CGColor;
    [self.view addSubview:text4];
    [text4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(text3.mas_bottom).offset(20);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(40);
    }];
    
    
    
}

- (void)showUITextView
{
    UITextView *textview = [[UITextView alloc] initWithFrame:CGRectZero];
    textview.showsHorizontalScrollIndicator = NO;
    textview.showsVerticalScrollIndicator = NO;
    textview.layer.borderWidth = 0.5;
    textview.layer.borderColor = UIColor.grayColor.CGColor;
    [self.view addSubview:textview];
    [textview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(80);
    }];
    
}

- (void)showUISearchBar
{
    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:CGRectZero];
       //设置提示文字
       searchBar.placeholder = @"搜索";
       //设置边框背景图片
       searchBar.backgroundImage = [UIImage imageNamed:@"testImage"];
       //设置代理
       //添加到视图
       [self.view addSubview:searchBar];
    [searchBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(80);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(40);
    }];
}

- (void)showUIStackView
{
    
    
    UIStackView *containerView = [[UIStackView alloc] init];
    containerView.axis = UILayoutConstraintAxisVertical;
    containerView.alignment =   UIStackViewAlignmentFirstBaseline ;
    containerView.spacing = 10;
    NSMutableString *testString =[[NSMutableString alloc]init];
    for (int i=0; i<5; i++) {
        UILabel *lable = [[UILabel alloc] init];
        lable.backgroundColor = [UIColor colorWithRed:random()%256/255.0 green:random()%256/255.0 blue:random()%256/255.0 alpha:1];
        [containerView addArrangedSubview:lable];
        NSString *str = [NSString stringWithFormat:@"%d",i];
        [testString appendString:str];
        lable.text = testString;
    }
    for (int i=0; i<5; i++) {
        UIButton *lable = [[UIButton alloc] init];
        lable.backgroundColor = [UIColor colorWithRed:random()%256/255.0 green:random()%256/255.0 blue:random()%256/255.0 alpha:1];
        [containerView addArrangedSubview:lable];
        NSString *str = [NSString stringWithFormat:@"%d",i];
        [testString appendString:str];
        [lable setTitle:testString forState:UIControlStateNormal];
    }
    [self.view addSubview:containerView];
    containerView.layer.borderWidth = 0.5;
    containerView.layer.borderColor = UIColor.grayColor.CGColor;
    [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(100);
        make.left.equalTo(self.view.mas_left).offset(20);
        make.right.equalTo(self.view.mas_right).offset(-20);
        make.bottom.offset(-20);
    }];
}

- (void)showUIDatePicker
{
    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:CGRectZero];
    /*
      UIDatePickerModeTime,     // Displays hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. 6 | 53 | PM)

      UIDatePickerModeDate,           // Displays month, day, and year depending on the locale setting (e.g. November | 15 | 2007)

      UIDatePickerModeDateAndTime,    // Displays date, hour, minute, and optionally AM/PM designation depending on the locale setting (e.g. Wed Nov 15 | 6 | 53 | PM)

      UIDatePickerModeCountDownTimer, // Displays hour and minute (e.g. 1 | 53)
    */

    datePicker.datePickerMode = UIDatePickerModeDate;
    datePicker.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
//    [datePicker addTarget:self action:@selector(birthdayChange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    [datePicker mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(100);
        make.left.equalTo(self.view.mas_left).offset(20);
        make.right.equalTo(self.view.mas_right).offset(-20);
        make.bottom.offset(-20);
    }];
}
- (void)test
{
    
}





- (void)changeProgress {
    // 如果进度条的进度值小于1.0，则进度条改变
    if (self.progressView.progress <1.0) {
        self.progressView.progress += 0.01;
    }else{
        self.progressView.progress = 0;
    }
    
    if (self.progressView2.progress <1.0) {
        self.progressView2.progress += 0.015;
    }else{
        self.progressView2.progress = 0;
    }
}


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    if (self.timer) {
        [self.timer invalidate];
    }
    
}

@end
