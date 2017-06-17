## 1. 效果图
![效果图](http://upload-images.jianshu.io/upload_images/1455933-d175c040222c417e.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 2. 安装方式
*  第一种：使用cocoapods安装

```
pod 'XLBottomMultiPurposeView'
```

*  第二种：把下图中的文件夹拖入你的项目
![文件夹截图](http://upload-images.jianshu.io/upload_images/1455933-8500ae389cbc7650.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 3. 使用说明
*  第一步： 构造XLBottomMultiPurposeViewItem类型数据源
```
NSArray *topTexts = @[@"微信好友",@"朋友圈",@"QQ",@"QQ空间",@"新浪微博",@"微信好友",@"朋友圈"];
    NSArray *topImages = @[@"details_icon_wechat_nor",@"details_icon_pyq_nor",@"details_icon_qq_nor",@"details_icon_kj_nor",@"details_icon_weibo_nor",@"details_icon_wechat_nor",@"details_icon_pyq_nor"];
    NSArray *topHighImages = @[@"details_icon_wechat_dow",@"details_icon_pyq_dow",@"details_icon_qq_dow",@"details_icon_kj_dow",@"details_icon_weibo_dow",@"details_icon_wechat_dow",@"details_icon_pyq_dow"];
    NSArray *bottomTexts = @[@"删除"];
    NSArray *bottomImages = @[@"details_icon_delete_nor"];
    NSArray *bottomHighImages = @[@"details_icon_delete_dow"];
    
    // 构建数据源
    NSMutableArray *topItems = [NSMutableArray arrayWithCapacity:topTexts.count] ;
    NSMutableArray *bottomItems = [NSMutableArray arrayWithCapacity:bottomTexts.count];
    for (int i = 0 ; i < topTexts.count; i ++) {
        XLBottomMultiPurposeViewItem *item = [XLBottomMultiPurposeViewItem itemWithImage:topImages[i] highImage:topHighImages[i] title:topTexts[i]];
        [topItems addObject:item];
    }
    for ( int i = 0 ; i < bottomTexts.count; i++) {
        XLBottomMultiPurposeViewItem *item = [XLBottomMultiPurposeViewItem itemWithImage:bottomImages[i] highImage:bottomHighImages[i] title:bottomTexts[i]];
        [bottomItems addObject:item];
    }
```

*  第二步：调用API展示功能组件
```
// 展示组件
    [XLBottomMultiPurposeView showBottomMultiPurposeViewWithTopItems:topItems bottomItems:bottomItems delegate:self topTitleLabelText:@"分享到"];
```

## 4. 更新日志
*   1.0.0
    *   完善基本功能

## 5. 喜欢的话,就给作者一个star ,你可以通过下面的方式联系到我
*  QQ群 : 579572313 (有什么问题,欢迎进群讨论提问)
*  邮箱 : coder_xl@163.com