//
//  ViewController.m
//  XLBottomMutiplePurposeViewDemo
//
//  Created by Liushannoon on 16/7/25.
//  Copyright © 2016年 LiuShannoon. All rights reserved.
//

#import "ViewController.h"
#import "XLBottomMultiPurposeView.h"

@interface ViewController () <XLBottomMultiPurposeViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"点击弹出多功能底部组件" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.backgroundColor = [UIColor grayColor];
    button.frame = CGRectMake(20, 100, 300, 60);
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickButton
{
    NSArray *topTexts = @[@"微信好友",@"朋友圈",@"QQ",@"QQ空间",@"新浪微博",@"微信好友",@"朋友圈"];
    NSArray *topImages = @[@"details_icon_wechat_nor",@"details_icon_pyq_nor",@"details_icon_qq_nor",@"details_icon_kj_nor",@"details_icon_weibo_nor",@"details_icon_wechat_nor",@"details_icon_pyq_nor"];
    NSArray *topHighImages = @[@"details_icon_wechat_dow",@"details_icon_pyq_dow",@"details_icon_qq_dow",@"details_icon_kj_dow",@"details_icon_weibo_dow",@"details_icon_wechat_dow",@"details_icon_pyq_dow"];
    NSArray *bottomTexts = @[@"删除"];
    NSArray *bottomImages = @[@"details_icon_delete_nor"];
    NSArray *bottomHighImages = @[@"details_icon_delete_dow"];
    [XLBottomMultiPurposeView showBottomMultiPurposeViewWithTopItemsImageArray:topImages topHighImageArray:topHighImages topItemsTextArray:topTexts bottomItemsImageArray:bottomImages bottomHighImageArray:bottomHighImages bottomItemsTextArray:bottomTexts delegate:self topTitleLabelText:@"分享到" ];
}

#pragma mark    -   XLBottomMultiPurposeViewDelegate

- (void)bottomMultiPurposeView:(XLBottomMultiPurposeView *)bottomMultiPurposeView clickTopItemIndex:(NSUInteger)index
{
    NSLog(@"点击了顶层的第 : %zd 个item",index);
}

- (void)bottomMultiPurposeView:(XLBottomMultiPurposeView *)bottomMultiPurposeView clickBottomItemIndex:(NSUInteger)index
{
    // 两层展示的时候,点击底层会调用这个方法
    NSLog(@"点击了底层的第 : %zd 个item",index);
}

@end
