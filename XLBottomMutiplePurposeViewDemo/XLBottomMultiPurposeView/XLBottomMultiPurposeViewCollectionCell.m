//
//  XLBottomMultiPurposeViewCollectionCell.m
//  TopHot
//
//  Created by Liushannoon on 16/4/12.
//  Copyright © 2016年 Liushannoon. All rights reserved.
//

#import "XLBottomMultiPurposeViewCollectionCell.h"
#import "XLBottomMultiPurposeViewItem.h"
#import "UIView+BMPExtension.h"

@interface XLBottomMultiPurposeViewCollectionCell ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation XLBottomMultiPurposeViewCollectionCell

- (void)setItem:(XLBottomMultiPurposeViewItem *)item
{
    _item = item;
    self.imageView.image = [UIImage imageNamed:item.image];
    self.imageView.highlightedImage = [UIImage imageNamed:item.highImage];
    self.titleLabel.text = item.title;
}

@end
