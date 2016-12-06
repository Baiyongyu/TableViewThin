//
//  ViewController.m
//  TableViewDataSource
//
//  Created by 宇玄丶 on 2016/12/6.
//  Copyright © 2016年 YongyuBai. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewDataSource.h"
#import "PhotoCell.h"
#import "PhotoModel.h"
static NSString *resueIdentifier = @"Cell";

@interface TableViewController () <UITableViewDelegate>

@property (nonatomic, strong) TableViewDataSource *tableViewDataSource;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupTableView];
}

- (void)setupTableView {
    
    TableViewCellConfigureBlock configureCell = ^(PhotoCell *cell, PhotoModel *model) {
        cell.photoTitleLabel.text = @"测试";
        cell.photoDateLabel.text = @"宇玄丶";
    };
    
    self.dataArray = [[NSMutableArray alloc] initWithArray:@[@"1", @"2"]];
    
    self.tableViewDataSource = [[TableViewDataSource alloc] initWithItems:self.dataArray CellIdentifier:resueIdentifier ConfigureCellBlock:configureCell];
    self.tableView.dataSource = self.tableViewDataSource;
    [self.tableView registerNib:[PhotoCell nib] forCellReuseIdentifier:resueIdentifier];
}


//- (NSMutableArray *)dataArray {
//    if (!_dataArray) {
//        _dataArray = [NSMutableArray array];
//    }
//    return _dataArray;
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
