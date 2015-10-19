//
//  GlobalResource.h
//  华讯网络
//
//  Created by Apple on 10/19/15.
//  Copyright © 2015 cnbin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalResource : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic, strong) NSString * content;
@property (nonatomic, strong) NSString * detailTitle;
@property (nonatomic, assign) NSInteger isPutImage;;
@end
