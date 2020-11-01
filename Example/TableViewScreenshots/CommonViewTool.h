//
//  CommonViewTool.h
//  TableViewScreenshots
//
//  Created by Kevin Jin on 2020/10/31.
//  Copyright © 2020 David Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CommonViewType)
{
    C_UIView = 0,
};


@interface CommonViewTool : NSObject

+ (UIView *)new_UIView_WirhSupview:(UIView *)superview;

+ (UILabel *)new_UILabel_WirhSupview:(UIView *)superview;

@end

NS_ASSUME_NONNULL_END
