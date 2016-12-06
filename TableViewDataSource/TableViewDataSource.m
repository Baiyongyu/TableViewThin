//
//  TableViewDataSource.m
//  TableViewDataSource
//
//  Created by 宇玄丶 on 2016/12/6.
//  Copyright © 2016年 YongyuBai. All rights reserved.
//

#import "TableViewDataSource.h"

@interface TableViewDataSource ()

@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation TableViewDataSource

- (instancetype)initWithItems:(NSMutableArray *)items CellIdentifier:(NSString *)cellIdentifier ConfigureCellBlock:(TableViewCellConfigureBlock)configureCellBlock {
    if (self = [super init]) {
        self.items = items;
        self.cellIdentifier = cellIdentifier;
        self.configureCellBlock = [configureCellBlock copy];
    }
    return self;
}

- (instancetype)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[indexPath.row];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

@end
