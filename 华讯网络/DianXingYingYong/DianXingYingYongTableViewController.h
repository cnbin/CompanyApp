//
//  DianXingYingYongTableViewController.h
//  华讯网络
//
//  Created by Apple on 9/28/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DianXingYingYongTableViewController : UITableViewController

@property (nonatomic,strong) NSMutableArray * zhengFuBuMenArray;
@property (nonatomic,strong) NSMutableArray * sectionArray;
@property (nonatomic,strong) NSMutableArray * shiYeDanWeiArray;
@property (nonatomic,strong) NSMutableArray * daXingQiYeArray;
@property (nonatomic,strong) NSMutableArray * zhongXiaoQiYeArray;
@property (nonatomic,strong) NSMutableArray * gongZhongFuWuArray;
@property (nonatomic,strong) NSArray *dataList;
@property (nonatomic,strong) NSDictionary *rootDict;
@property (nonatomic,strong) NSString * content;
@property (nonatomic,strong) NSString * dianXingtitle;
@property (nonatomic,strong) NSString *detailTitle;
//定义是否放置图片
@property (nonatomic,assign) NSInteger isPutImage;
@end
