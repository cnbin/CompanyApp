//
//  ZhuYaoYeWuTableViewController.m
//  华讯网络
//
//  Created by Apple on 9/29/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import "ZhuYaoYeWuTableViewController.h"
#import "DetailDianXingYingYongViewController.h"

@interface ZhuYaoYeWuTableViewController ()

@end

@implementation ZhuYaoYeWuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"主要业务";
    _zhuYaoYeWuArray  = [[NSMutableArray alloc]initWithObjects:
                        @"软件开发",
                        @"网络工程",
                        @"网络与电信增值服务",
                        @"广告策划",
                        nil];
    
    NSString *dataFilePath = [[NSBundle mainBundle] pathForResource:@"zhuYaoYeWu" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:dataFilePath];
    _rootDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     
     @{NSFontAttributeName:[UIFont systemFontOfSize:14],
       
       NSForegroundColorAttributeName:[UIColor blackColor]}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"zhuYaoYeWuCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSInteger row = indexPath.row;
    cell.textLabel.text = [_zhuYaoYeWuArray objectAtIndex:row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    UIFont *myFont = [ UIFont fontWithName: @"Arial" size: 14.0 ];
    cell.textLabel.font  = myFont;
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    NSInteger row = indexPath.row;
    self.content = [[_rootDict objectForKey:@"ZhuYaoYeWu"]objectAtIndex:row];
    self.detailTitle = [_zhuYaoYeWuArray objectAtIndex:row];
    [self performSegueWithIdentifier:@"zhuYaoYeWuSegue" sender:nil];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"zhuYaoYeWuSegue"]){
        DetailDianXingYingYongViewController * de = segue.destinationViewController;
        de.content = self.content;
        de.detailTitle = self.detailTitle;
    }
    
}

@end
