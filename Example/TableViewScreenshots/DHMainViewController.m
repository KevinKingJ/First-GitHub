//
//  DHMainViewController.m
//  TableViewScreenshots
//
//  Created by Hernandez Alvarez, David on 11/28/13.
//  Copyright (c) 2013 David Hernandez. All rights reserved.
//

#import "DHMainViewController.h"
#import "DHSmartScreenshot.h"
#import "UIView+DHSmartScreenshot.h"
#import "SelectViewVC.h"

@interface DHMainViewController ()
@property (strong, nonatomic) UIImage *screenshotTaken;

@property (strong, nonatomic) UIButton *btnImg;
@end

@implementation DHMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    self.clearsSelectionOnViewWillAppear = YES;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.screenshotTaken = nil;
//    self.btnImg = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
//    self.btnImg.backgroundColor = UIColor.blueColor;
//    [self.btnImg setTitle:@"test" forState:UIControlStateNormal];
//    [self.tableView addSubview:self.btnImg];
//    [self.tableView bringSubviewToFront:self.btnImg];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//截图功能

-(UIImage *)captureImageFromView:(UIView *)view{
    
    UIGraphicsBeginImageContextWithOptions(view.frame.size,NO, 0);
    
    //[[UIColor clearColor] setFill];
    //
    //[[UIBezierPath bezierPathWithRect:view.bounds] fill];
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    [view.layer renderInContext:ctx];
    //[view drawViewHierarchyInRect:view.bounds afterScreenUpdates:NO];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;}


//截取全屏视图
-(UIImage *)getImageWithFullScreenshot
{
    
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    CGSize imageSize = CGSizeZero;
    
    //适配横屏状态
    if (UIInterfaceOrientationIsPortrait(orientation) )
        imageSize = [UIScreen mainScreen].bounds.size;
    else
        imageSize = CGSizeMake([UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width);
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, [UIScreen mainScreen].scale);
    
    
    //    CGContextRef context = UIGraphicsGetCurrentContext();
    
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows])
    {
        [[UIColor clearColor] setFill];
        [[UIBezierPath bezierPathWithRect:window.bounds] fill];
        //        CGContextSaveGState(context);
        //        CGContextTranslateCTM(context, window.center.x, window.center.y);
        //        CGContextConcatCTM(context, window.transform);
        //        CGContextTranslateCTM(context, -window.bounds.size.width * window.layer.anchorPoint.x, -window.bounds.size.height * window.layer.anchorPoint.y);
        
        // Correct for the screen orientation
        if(orientation == UIInterfaceOrientationLandscapeLeft)
        {
            //            CGContextRotateCTM(context, (CGFloat)M_PI_2);
            //            CGContextTranslateCTM(context, 0, -imageSize.width);
        }
        else if(orientation == UIInterfaceOrientationLandscapeRight)
        {
            //            CGContextRotateCTM(context, (CGFloat)-M_PI_2);
            //            CGContextTranslateCTM(context, -imageSize.height, 0);
        }
        else if(orientation == UIInterfaceOrientationPortraitUpsideDown)
        {
            //            CGContextRotateCTM(context, (CGFloat)M_PI);
            //            CGContextTranslateCTM(context, -imageSize.width, -imageSize.height);
        }
        
        if([window respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)])
            [window drawViewHierarchyInRect:window.bounds afterScreenUpdates:NO];
        else
            [window.layer renderInContext:UIGraphicsGetCurrentContext()];
        
        //        CGContextRestoreGState(context);
    }
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSLog(@"1111");
    return image;
    
}

#pragma mark - Take Screenshot Examples

- (void)takeFullScreenshot
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"你好" message:@"我是普通警告框"
                                                  delegate:nil cancelButtonTitle:@"好的" otherButtonTitles: nil];
    [alert show];
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
//        [self.btnImg setHidden:YES];
        //隐藏所有子视图
        [self.btnImg.subviews makeObjectsPerformSelector:@selector(setHidden:) withObject:@YES];
        self.screenshotTaken = [self getImageWithFullScreenshot];
        [self.btnImg.subviews makeObjectsPerformSelector:@selector(setHidden:) withObject:@NO];
//        [self.btnImg setHidden:NO];
        UIImageWriteToSavedPhotosAlbum(self.screenshotTaken, nil, nil, nil);
    });
    
    
    
}

- (void)takeScreenshotWithoutHeaders
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"你好" message:@"我是普通警告框"
                                                  delegate:nil cancelButtonTitle:@"好的" otherButtonTitles: nil];
    [alert show];
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        self.screenshotTaken = [self captureImageFromView:[[[UIApplication sharedApplication] windows] firstObject]];
        //            self.screenshotTaken = [self getImageWithFullScreenshot];
        UIImageWriteToSavedPhotosAlbum(self.screenshotTaken, nil, nil, nil);
    });
    
    
    //    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:@"标题" message:@"内容" preferredStyle:UIAlertControllerStyleActionSheet];
    //       //默认只有标题 没有操作的按钮:添加操作的按钮 UIAlertAction
    //
    //       UIAlertAction *cancelBtn = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    //           NSLog(@"取消");
    //       }];
    //       //添加确定
    //       UIAlertAction *sureBtn = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull   action) {
    //           NSLog(@"确定");
    //       }];
    //       //设置`确定`按钮的颜色
    //       [sureBtn setValue:[UIColor redColor] forKey:@"titleTextColor"];
    //       //将action添加到控制器
    //       [alertVc addAction:cancelBtn];
    //       [alertVc addAction :sureBtn];
    //       //展示
    //       [self presentViewController:alertVc animated:YES completion:nil];
    //
    //    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, 2 * NSEC_PER_SEC);
    //    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
    //            self.screenshotTaken = [self getImageWithFullScreenshot];
    //            UIImageWriteToSavedPhotosAlbum(self.screenshotTaken, nil, nil, nil);
    //    });
    //	self.screenshotTaken = [self.tableView screenshotExcludingAllHeaders:YES
    //													 excludingAllFooters:NO
    //														excludingAllRows:NO];
}

- (void)takeScreenshotWithoutFooters
{
    self.screenshotTaken = [self.tableView screenshotExcludingAllHeaders:NO
                                                     excludingAllFooters:YES
                                                        excludingAllRows:NO];
}

- (void)takeScreenshotForRowsOnly
{
    self.screenshotTaken = [self.tableView screenshotExcludingAllHeaders:YES
                                                     excludingAllFooters:YES
                                                        excludingAllRows:NO];
}

- (void)takeScreenshotForRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.screenshotTaken = [self.tableView screenshotOfCellAtIndexPath:indexPath];
}

-(void)takeScreenshotOfVisibleContent{
    self.screenshotTaken = [self.tableView screenshotOfVisibleContent];
}

- (void)takeScreenshotWithoutFirstHeader
{
    NSArray *excludedHeadersSections = @[@(0)];
    self.screenshotTaken = [self.tableView screenshotExcludingHeadersAtSections:[NSSet setWithArray:excludedHeadersSections]
                                                     excludingFootersAtSections:nil
                                                      excludingRowsAtIndexPaths:nil];
}

- (void)takeScreenshoOfJustLastTwoFooters
{
    NSArray *includeFootersSections = @[@(self.tableView.numberOfSections - 2), @(self.tableView.numberOfSections - 1)];
    self.screenshotTaken = [self.tableView screenshotOfHeadersAtSections:nil
                                                       footersAtSections:[NSSet setWithArray:includeFootersSections] rowsAtIndexPaths:nil];
}

- (void)takeScreenshotForJustRowsOnThisSection:(NSUInteger)section
{
    NSArray *includedRows = nil;
    includedRows = [self.tableView indexPathsForRowsInRect:[self.tableView rectForSection:section]];
    self.screenshotTaken = [self.tableView screenshotOfHeadersAtSections:nil
                                                       footersAtSections:nil
                                                        rowsAtIndexPaths:[NSSet setWithArray:includedRows]];
}

- (void)takeScreenshotForComplexUse
{
    NSMutableArray *includedRows = [NSMutableArray array];
    [includedRows addObject:[NSIndexPath indexPathForRow:0 inSection:0]];
    [includedRows addObject:[NSIndexPath indexPathForRow:0 inSection:1]];
    [includedRows addObject:[NSIndexPath indexPathForRow:0 inSection:2]];
    
    NSMutableArray *includedHeadersSections = [NSMutableArray array];
    [includedHeadersSections addObject:@(0)];
    [includedHeadersSections addObject:@(1)];
    [includedHeadersSections addObject:@(3)];
    
    NSMutableArray *includedFootersSections = [NSMutableArray array];
    [includedFootersSections addObject:@(0)];
    [includedFootersSections addObject:@(1)];
    [includedFootersSections addObject:@(2)];
    [includedFootersSections addObject:@(4)];
    
    self.screenshotTaken = [self.tableView screenshotOfHeadersAtSections:[NSSet setWithArray:includedHeadersSections]
                                                       footersAtSections:[NSSet setWithArray:includedFootersSections]
                                                        rowsAtIndexPaths:[NSSet setWithArray:includedRows]];
}

#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (indexPath.section == 0) {
//        if (indexPath.row == 0) {
//            [self takeFullScreenshot];
//        } else if (indexPath.row == 1) {
//            [self takeScreenshotWithoutHeaders];
//        } else if (indexPath.row == 2) {
//            [self takeScreenshotWithoutFooters];
//        } else if (indexPath.row == 3) {
//            [self takeScreenshotForRowsOnly];
//        } else if (indexPath.row == 4) {
//            [self takeScreenshotForRowAtIndexPath:indexPath];
//        } else if (indexPath.row == 5) {
//            [self takeScreenshotOfVisibleContent];
//        }
//    } else if (indexPath.section == 1) {
//        if (indexPath.row == 0) {
//            [self takeScreenshotWithoutFirstHeader];
//        } else if (indexPath.row == 1) {
//            [self takeScreenshoOfJustLastTwoFooters];
//        } else if (indexPath.row == 2) {
//            [self takeScreenshotForJustRowsOnThisSection:indexPath.section];
//        }
//    } else if (indexPath.section == 2) {
//        [self takeScreenshotForComplexUse];
//    } else {
//        [self takeFullScreenshot];
//    }
    
    SelectViewVC *vc = [[SelectViewVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    //	[self performSegueWithIdentifier:@"showTableViewScreenshotSegue_Id" sender:self];
}

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showTableViewScreenshotSegue_Id"]) {
        UIViewController *destination = [segue destinationViewController];
        [destination setValue:self.screenshotTaken forKey:@"screenshot"];
    }
}

@end
