//
//  DetailDianXingYingYongViewController.m
//  华讯网络
//
//  Created by Apple on 9/29/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import "DetailDianXingYingYongViewController.h"
#import "DetailTableViewCell.h"

static NSString *CellIdentifier = @"TableCellIdentifier";

@interface DetailDianXingYingYongViewController ()

@end

@implementation DetailDianXingYingYongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = [GlobalResource sharedInstance].detailTitle;
    self.tableView.allowsSelection = YES;
    [self.tableView registerClass:[DetailTableViewCell class] forCellReuseIdentifier:CellIdentifier];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 44.0;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource=self;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(contentSizeCategoryChanged:)
                                                 name:UIContentSizeCategoryDidChangeNotification
                                               object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIContentSizeCategoryDidChangeNotification
                                                  object:nil];
}

- (void)contentSizeCategoryChanged:(NSNotification *)notification {
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.detail_cell.text =[GlobalResource sharedInstance].content;
    if ([GlobalResource sharedInstance].isPutImage) {
        cell.img.image = [UIImage imageNamed:@"4.png"];
    }
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
