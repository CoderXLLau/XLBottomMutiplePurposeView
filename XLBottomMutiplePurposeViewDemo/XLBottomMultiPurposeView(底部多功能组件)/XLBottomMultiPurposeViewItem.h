//
//  XLBottomMultiPurposeViewItem.h
//  TopHot
//
//  Created by Liushannoon on 16/4/12.
//  Copyright © 2016年 Liushannoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XLBottomMultiPurposeViewItem : NSObject

/** title */
@property (nonatomic, strong) NSString *title;
/** 图片 */
@property (nonatomic, strong) NSString *image;
/**
 *  高亮图片
 */
@property (nonatomic , strong) NSString *highImage;

- (instancetype)initWithDict:(NSDictionary *)dict;
- (instancetype)initWithImage:(NSString *)image highImage:(NSString *)highImage title:(NSString *)title;
+ (instancetype)itemWithDict:(NSDictionary *)dict;

@end
