//
//  ShouYeViewController.m
//  华讯网络
//
//  Created by Apple on 9/28/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import "ShouYeViewController.h"


@interface ShouYeViewController ()
@end

@implementation ShouYeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     
     @{NSFontAttributeName:[UIFont systemFontOfSize:14],
       
     NSForegroundColorAttributeName:[UIColor blackColor]}];

     self.title =@"首页";
    
    self.contentLabel = [UILabel newAutoLayoutView];
    [self.contentLabel setLineBreakMode:NSLineBreakByTruncatingTail];
    [self.contentLabel setNumberOfLines:0];
    [self.contentLabel setTextAlignment:NSTextAlignmentLeft];
    [self.contentLabel setTextColor:[UIColor blackColor]];
    self.contentLabel.text = @"      广东华讯网络投资有限公司成立于2004年，注册资金1008万，是一家享誉粤东的高科技开发和服务型龙头企业之一，主要致力软件开发、网络工程、网络与电信增值服务、广告策划四大业务。\n\n      公司先后经广东省信息产业厅批准成为揭阳市信息化培训中心、广东省中小企业信息化创新服务中心揭阳分中心；被广东省科技厅评选为广东省民营科技企业；获得工信部计算机集成资质和省公安厅技防资格证；现已通过ISO9001质量管理认证；已成为华南理工大学计算机科学与工程学院研究生校外培养基地、广东省软件行业协会会员单位和广东省通信行业协会会员单位，截止目前公司已累计系统集成工程、技术服务及信息运营项目近百项。\n\n      此外，近年来我公司加大了在物联网方面的研发力度，成功推出了企业一卡通相关应用系统，并承接了全省公交一卡通“岭南通” 在阳的地方品牌“榕江通” 运营资格。\n\n      榕江通是我公司按照相关规定发行的一种非接触式智能卡，具有电子钱包及身份识别等功能。它与广州羊城通及佛山广佛通同属全省“岭南通” 体系的地方品牌，并已实现了全省互连互通，是建设智慧城市的重要举措。\n\n      根据广东省政府批复同意的《 全省公交一卡通工作实施方案 》总体规划，该卡作为广东省统一规划、使用方便、经济实惠的智能卡，不仅全面应用于广东与香港公交、地铁、城际轨道交通等公共交通工具，并且将要扩展到便利店、菜市场、超市及停车场等公共服务领域，具有“小额支付、方便快捷；一卡在手、粤港通行” 等特点。在揭阳，我公司将全方位整合“衣、食、住、行”等商家资源，把应用延伸到企业及校园一卡通，让榕江通成为市民使用方便，值得信赖的生活智能卡，成为市民享受“智慧城市” 的重要工具。\n\n      雄关漫道真如铁，而今迈步从头越。在新的起点里，华讯网络愿与您携手，共创美好明天！";
    
    self.contentLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:self.contentLabel];
    
    [NSLayoutConstraint autoSetPriority:UILayoutPriorityRequired forConstraints:^{
        [self.contentLabel autoSetContentCompressionResistancePriorityForAxis:ALAxisVertical];
    }];
    [self.contentLabel autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:75];
    [self.contentLabel autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:10];
    [self.contentLabel autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
