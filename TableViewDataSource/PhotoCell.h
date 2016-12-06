//
//  PhotoCell.h
//  TableViewDataSource
//
//  Created by 宇玄丶 on 2016/12/6.
//  Copyright © 2016年 YongyuBai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoCell : UITableViewCell

+ (UINib *)nib;

@property (weak, nonatomic) IBOutlet UILabel *photoTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *photoDateLabel;

@end
