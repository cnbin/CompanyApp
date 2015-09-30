//
//  DetailDianXingYingYongViewController.m
//  华讯网络
//
//  Created by Apple on 9/29/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import "DetailDianXingYingYongViewController.h"

@interface DetailDianXingYingYongViewController ()

@end

@implementation DetailDianXingYingYongViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.detailTitle;

    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(320, 1050);
    [self.view addSubview:scrollView];
    
    
    TYAttributedLabel *label1 = [[TYAttributedLabel alloc]init];
    label1.text = self.content;
 
    // 文字间隙
    label1.characterSpacing = 2;
    // 文本行间隙
    label1.linesSpacing = 2;
    
    label1.lineBreakMode = kCTLineBreakByTruncatingTail;
    // 文本字体
    label1.font = [UIFont systemFontOfSize:14];
    
    // 设置view的位置和宽，会自动计算高度
    [label1 sizeToFit];
    
    [label1 setFrameWithOrign:CGPointMake(10, 10) Width: self.view.frame.size.width-20];
    
    [scrollView addSubview:label1];
    
    if (_isPutImage) {
        
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, label1.frame.size.height+20, self.view.frame.size.width-40, 200)];
    
    [imageView setImage:[UIImage imageNamed:@"4.jpeg"]];
    [scrollView addSubview:imageView];
        
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
