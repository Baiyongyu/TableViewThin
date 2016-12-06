//
//  PhotoCell.m
//  TableViewDataSource
//
//  Created by 宇玄丶 on 2016/12/6.
//  Copyright © 2016年 YongyuBai. All rights reserved.
//

#import "PhotoCell.h"

@implementation PhotoCell

+ (UINib *)nib {
    return [UINib nibWithNibName:@"PhotoCell" bundle:nil];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    [super setHighlighted:highlighted animated:animated];
    if (highlighted) {
        self.photoTitleLabel.shadowColor = [UIColor darkGrayColor];
        self.photoTitleLabel.shadowOffset = CGSizeMake(3, 3);
    } else {
        self.photoTitleLabel.shadowColor = nil;
    }
}

@end
