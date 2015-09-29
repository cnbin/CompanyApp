//
//  LianXiHuaXunViewController.m
//  华讯网络
//
//  Created by Apple on 9/29/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import "LianXiHuaXunViewController.h"
#import "DetailDianXingYingYongViewController.h"

@interface LianXiHuaXunViewController ()

@end

@implementation LianXiHuaXunViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"联系华讯";
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     
     @{NSFontAttributeName:[UIFont systemFontOfSize:14],
       
       NSForegroundColorAttributeName:[UIColor blackColor]}];
    
    _lianXiHuaXunArray = [[NSMutableArray alloc]initWithObjects:
                          @"联系华讯",
                          @"法讯通在线",
                          nil];
    
    NSString *dataFilePath = [[NSBundle mainBundle] pathForResource:@"lianXiHuaXun" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:dataFilePath];
    _rootDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"LianXiHuaXunCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSInteger row = indexPath.row;
    cell.textLabel.text = [_lianXiHuaXunArray objectAtIndex:row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    UIFont *myFont = [ UIFont fontWithName: @"Arial" size: 14.0 ];
    cell.textLabel.font  = myFont;
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger row = indexPath.row;
    self.content = [[_rootDict objectForKey:@"LianXiHuaXun"]objectAtIndex:row];
     self.detailTitle = [_lianXiHuaXunArray objectAtIndex:row];
    [self performSegueWithIdentifier:@"lianXiHuaXunSegue" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"lianXiHuaXunSegue"]){
        DetailDianXingYingYongViewController * de = segue.destinationViewController;
        de.content = self.content;
        de.detailTitle = self.detailTitle;
    }
    
}

@end
