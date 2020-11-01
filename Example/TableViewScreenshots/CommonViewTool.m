//
//  CommonViewTool.m
//  TableViewScreenshots
//
//  Created by Kevin Jin on 2020/10/31.
//  Copyright © 2020 David Hernandez. All rights reserved.
//

#import "CommonViewTool.h"
#import <Masonry.h>

@implementation CommonViewTool


+ (UIView *)new_UIView_WirhSupview:(UIView *)superview
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
    view.backgroundColor = UIColor.whiteColor;
    [superview addSubview:view];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectZero];
    title.text = @"text";
    [view addSubview:title];
    [title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(view.mas_top);
        make.left.mas_equalTo(view.mas_left);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(60);
    }];
    return view;
}

+ (UILabel *)new_UILabel_WirhSupview:(UIView *)superview
{
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectZero];
    lab.text = @"text";
    [superview addSubview:lab];
    return lab;
}


@end
