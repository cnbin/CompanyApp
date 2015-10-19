//
//  DetailTableViewCell.h
//  华讯网络
//
//  Created by Apple on 10/19/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PureLayout.h"
@interface DetailTableViewCell : UITableViewCell

@property (strong, nonatomic) UILabel *detail_cell;
@property (nonatomic, assign) BOOL didSetupConstraints;
@property (strong, nonatomic) UIImageView * img;

@end
