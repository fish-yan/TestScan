# TestScan
二维码扫描
####首先声明这个二维码扫描是借助于zxing.
功能模块都完全封装好了,不过界面合你口味,直接使用就好,如果不合口味,后面告诉你怎么修改.
- 1.cocoaPods导入pod 'LBXScan', '~> 1.1.1'
 导入方法看这:http://blog.csdn.net/fish_yan_/article/details/50483282
- 2.将XYScan文件夹拖到你的工程中(这个是写好的).

```Objective-C
//导入头文件
#import <LBXScanViewController.h>
#import "SubLBXScanViewController.h"

- (IBAction)scanButtonAction:(UIButton *)sender {
    SubLBXScanViewController *vc = [SubLBXScanViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}
```
界面是这样的,下面是可以扫描相册二维码,打开闪光灯,生成二维码.如果满意就不需要再修改了
![这里写图片描述](http://img.blog.csdn.net/20160120172737756)


- 3.下面说说如果不满意怎么修改,
  其实修改也不难,界面和功能上的修改都集中在SubLBXScanViewController.m中
  二维码的生成在MyQRViewController.m中修改(这个就不说了,自己看吧)
  
  先说SubLBXScanViewController.m中
 
  ```objective-c
	//原有代码是这样的
	 LBXScanViewStyle *style = [[LBXScanViewStyle alloc]init];
    style.anmiationStyle = LBXScanViewAnimationStyle_LineMove;
    style.animationImage = [UIImage imageNamed:@"CodeScan.bundle/qrcode_scan_light_green"];
    self.style = style;
    
	//下面这些属性可以根据自己喜好添加
  //矩形区域中心上移，默认中心点为屏幕中心点
    style.centerUpOffset = 44;
    
    //扫码框周围4个角的类型,设置为外挂式
    style.photoframeAngleStyle = LBXScanViewPhotoframeAngleStyle_Outer;
    
    //扫码框周围4个角绘制的线条宽度
    style.photoframeLineW = 6;
    
    //扫码框周围4个角的宽度
    style.photoframeAngleW = 24;
    
    //扫码框周围4个角的高度
    style.photoframeAngleH = 24;
    
	//显示矩形框
    style.isNeedShowRetangle = YES;

	//动画类型：网格形式，模仿支付宝
    style.anmiationStyle = LBXScanViewAnimationStyle_NetGrid;
	//使用的支付宝里面网格图片
    UIImage *imgPartNet = [UIImage imageNamed:@"CodeScan.bundle/qrcode_scan_part_net"];
	//码框周围4个角的颜色
    style.colorAngle = [UIColor colorWithRed:65./255. green:174./255. blue:57./255. alpha:1.0];
    
    //矩形框颜色
    style.colorRetangleLine = [UIColor colorWithRed:247/255. green:202./255. blue:15./255. alpha:1.0];
    
    //非矩形框区域颜色
    style.red_notRecoginitonArea = 247./255.;
    style.green_notRecoginitonArea = 202./255;
    style.blue_notRecoginitonArea = 15./255;
    style.alpa_notRecoginitonArea = 0.2;

	//开启只识别矩形框内图像功能
    vc.isOpenInterestRect = YES;

	//非正方形
    //设置矩形宽高比
    style.whRatio = 4.3/2.18;

    //离左边和右边距离
    style.xScanRetangleOffset = 30; 
    ```
    ![这里写图片描述](http://img.blog.csdn.net/20160120175335325)
github地址:https://github.com/757094197/TestScan
