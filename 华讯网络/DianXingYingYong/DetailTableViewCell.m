//
//  DetailTableViewCell.m
//  华讯网络
//
//  Created by Apple on 10/19/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import "DetailTableViewCell.h"

@implementation DetailTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.detail_cell= [UILabel newAutoLayoutView];
        [self.detail_cell setLineBreakMode:NSLineBreakByTruncatingTail];
        [self.detail_cell setNumberOfLines:0];
        [self.detail_cell setTextAlignment:NSTextAlignmentLeft];
        [self.detail_cell setTextColor:[UIColor blackColor]];
        self.detail_cell.font = [UIFont fontWithName:@"Helvetica" size:14];
        [self.contentView addSubview:self.detail_cell];
        
        if ([GlobalResource sharedInstance].isPutImage) {
            
            self.img= [UIImageView newAutoLayoutView];
            [self.contentView addSubview:self.img];
        }
        
        
    }
     return self;
}

- (void)updateConstraints
{
    if (!self.didSetupConstraints) {
        
        self.contentView.bounds = CGRectMake(0.0f, 0.0f, 99999.0f,99999.0f);
        
        //标签
        [NSLayoutConstraint autoSetPriority:UILayoutPriorityRequired forConstraints:^{
            [self.detail_cell autoSetContentCompressionResistancePriorityForAxis:ALAxisVertical];
        }];
        
        [self.detail_cell autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:10];
        [self.detail_cell autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:10];
        [self.detail_cell autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:10];

        //图像
        [NSLayoutConstraint autoSetPriority:UILayoutPriorityRequired forConstraints:^{
            [self.img autoSetContentCompressionResistancePriorityForAxis:ALAxisVertical];
        }];
        [self.img autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:10];
        [self.img  autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:10];
        [self.img autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.detail_cell withOffset:10];
        self.didSetupConstraints = YES;
        if ([GlobalResource sharedInstance].isPutImage) {
            [self.img autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:10];

        }
        else
        {
            [self.detail_cell autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:10];
        }
       
    }
    
    [super updateConstraints];
}
@end
