//
//  DianXingYingYongTableViewController.m
//  华讯网络
//
//  Created by Apple on 9/28/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import "DianXingYingYongTableViewController.h"
#import "DetailDianXingYingYongViewController.h"

@interface DianXingYingYongTableViewController ()

@end

@implementation DianXingYingYongTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"典型应用";
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     
     @{NSFontAttributeName:[UIFont systemFontOfSize:13],
       
       NSForegroundColorAttributeName:[UIColor blackColor]}];
    
    NSString *dataFilePath = [[NSBundle mainBundle] pathForResource:@"dianXing" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:dataFilePath];
    _rootDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
    
        _sectionArray = [[NSMutableArray alloc]initWithObjects:
                         @"公共服务",
                         @"政府部门",
                         @"事业单位",
                         @"大型企业",
                         @"中小企业",
                         nil];
    
    _gongZhongFuWuArray = [[NSMutableArray alloc]initWithObjects:
                          @"榕江通应用简介",
                          nil];
    
    _zhengFuBuMenArray = [[NSMutableArray alloc]initWithObjects:
                         @"揭阳市政府WAP无线门户网站",
                         @"揭阳市安全生产监督信息化平台系统项目",
                         @"揭阳市司法局网站项目建设",
                         @"揭阳农业局网站项目建设",
                         nil];
    
    _shiYeDanWeiArray = [[NSMutableArray alloc]initWithObjects:
                        @"揭阳市气象局的城市应急系统",
                        @"揭阳供电局客户服务信息平台",
                        @"中国（工商、农业）银行揭阳分行 “基金通”系统项目",
                        @"揭阳市“移动图书馆信息服务”管理系统",
                        @"揭阳中小学远程课余辅导系统建设项目",
                        @"小额手机话费支付工程之电影院售票系统",
                        @"揭阳市广播电台《民生热线》短信互动平台系统",
                        nil];
    
    _daXingQiYeArray = [[NSMutableArray alloc]initWithObjects:
                        @"中国移动揭阳分公司2009年IP专线代维项目",
                        @"中国移动揭阳分公司集团客户支撑系统",
                        @"中国移动揭阳分公司全业务WEB2.0项目",
                        @"中国移动揭阳分公司“法讯通”系统平台",
                        @"中国移动揭阳分公司“生活宝典”、“农信通”系统平台",
                        @"山旗电子厂OA办公自动化系统",
                        @"广东康亿民餐饮公司网站建设 ",
                        nil];
    
  _zhongXiaoQiYeArray = [[NSMutableArray alloc]initWithObjects:
                        @"广东国茂珠绣有限公司邮件系统",
                        @"广东省华鹰软包装设备总厂有限公司网站建设 ",
                        @"汕头市陶然居装饰设计有限公司网站系统",
                        @"广东省揭阳市信荣五金工艺有限公司网站",
                        @"信天游广告策划有限公司网站系统",
                        nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"公共服务";
            break;
        case 1:
            return @"政府部门";
            break;
        case 2:
            return @"事业单位";
            break;
        case 3:
            return @"大型企业";
            break;
        case 4:
            return @"中小企业";
            break;
        default:
            break;
    }
    return 0;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 5;
}


#pragma mark 返回对应分组列表项数量
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
            
        case 0:
            return 1;
            break;
            
        case 1:
            return 4;
            break;
            
        case 2:
            return 7;
            break;
            
        case 3:
            return 7;
            break;
            
        case 4:
            return 5;
            break;
            
        default:
            break;
    }
    return  0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"DianXingCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    UIFont *myFont = [ UIFont fontWithName: @"Arial" size: 14.0 ];
    cell.textLabel.font  = myFont;
    switch (section) {
        case 0:
        {
            cell.textLabel.text = [_gongZhongFuWuArray objectAtIndex:row];
          
        }
            break;
        case 1:
        {
            cell.textLabel.text = [_zhengFuBuMenArray objectAtIndex:row];
                    }
            break;
        case 2:
        {
            cell.textLabel.text = [_shiYeDanWeiArray objectAtIndex:row];
  
        }
            break;
        case 3:
        {
            cell.textLabel.text = [_daXingQiYeArray objectAtIndex:row];
        
        }
            break;
        case 4:
        {
            cell.textLabel.text = [_zhongXiaoQiYeArray objectAtIndex:row];
     
        }
            break;

        default:
            break;
    }

    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;

    self.content = [[[_rootDict objectForKey:@"contentDict"]objectAtIndex:section]objectAtIndex:row];
    
    switch (section) {
        case 0:
        {
            self.detailTitle = [_gongZhongFuWuArray objectAtIndex:row];
         
        }
            break;
        case 1:
        {
            self.detailTitle = [_zhengFuBuMenArray objectAtIndex:row];
        }
            break;
        case 2:
        {
            self.detailTitle = [_shiYeDanWeiArray objectAtIndex:row];
            
        }
            break;
        case 3:
        {
            self.detailTitle = [_daXingQiYeArray objectAtIndex:row];
            
        }
            break;
        case 4:
        {
            self.detailTitle = [_zhongXiaoQiYeArray objectAtIndex:row];
            
        }
            break;
            
        default:
            break;
    }
    if (section == 0) {
        _isPutImage = true;
    }
    else
    {
        _isPutImage = false;
    }

    [self performSegueWithIdentifier:@"detailDianXingSegue" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailDianXingSegue"]){
        
        DetailDianXingYingYongViewController * de = segue.destinationViewController;
        de.content = self.content;
        de.detailTitle = self.detailTitle;
        de.isPutImage = self.isPutImage;

    }

}

@end
