//
//  XLBottomMultiPurposeViewItem.m
//  TopHot
//
//  Created by Liushannoon on 16/4/12.
//  Copyright © 2016年 Liushannoon. All rights reserved.
//

#import "XLBottomMultiPurposeViewItem.h"

@implementation XLBottomMultiPurposeViewItem

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage title:(NSString *)title
{
    return [[self alloc] initWithImage:image highImage:highImage title:title];
}

- (instancetype)initWithImage:(NSString *)image highImage:(NSString *)highImage title:(NSString *)title;
{
    if (self = [super init]) {
        self.title = title;
        self.image = image;
        self.highImage = highImage;
    }
    return self;
}

+ (instancetype)itemWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        self.title = dict[@"title"];
        self.image = dict[@"image"];
        self.highImage = dict[@"highImage"];
    }
    return self;
}

@end
