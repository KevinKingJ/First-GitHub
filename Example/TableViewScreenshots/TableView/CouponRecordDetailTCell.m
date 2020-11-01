//
//  CouponRecordDetailTCell.m
//  MoenProject
//
//  Created by Kevin Jin on 2018/12/7.
//  Copyright © 2018年 Kevin Jin. All rights reserved.
//

#import "CouponRecordDetailTCell.h"

@interface CouponRecordDetailTCell()
@property (weak, nonatomic) IBOutlet UILabel *time_Lab;

@property (weak, nonatomic) IBOutlet UILabel *order_code_Lab;

@property (weak, nonatomic) IBOutlet UILabel *orderNumber_Lab;

@property (weak, nonatomic) IBOutlet UILabel *price_Title_Lab;

@property (weak, nonatomic) IBOutlet UILabel *awards_des_Lab;

@property (weak, nonatomic) IBOutlet UILabel *awards_No_Lab;

@property (weak, nonatomic) IBOutlet UILabel *price_Lab;



@end

@implementation CouponRecordDetailTCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.time_Lab.font = [UIFont systemFontOfSize:14];
    self.order_code_Lab.font = [UIFont systemFontOfSize:14];
    self.orderNumber_Lab.font = [UIFont systemFontOfSize:14];
    self.price_Title_Lab.font = [UIFont systemFontOfSize:14];
    self.price_Lab.font = [UIFont systemFontOfSize:14];
    // Initialization code
}




- (void)showDataWithAwardsDetailItemModel:(id)data
{
    
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
