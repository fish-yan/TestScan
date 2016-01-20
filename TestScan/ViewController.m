//
//  ViewController.m
//  TestScan
//
//  Created by 薛焱 on 16/1/20.
//  Copyright © 2016年 薛焱. All rights reserved.
//

#import "ViewController.h"
#import <LBXScanViewController.h>
#import "SubLBXScanViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)scanButtonAction:(UIButton *)sender {
    
    SubLBXScanViewController *vc = [SubLBXScanViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
