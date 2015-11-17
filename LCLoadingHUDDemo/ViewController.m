//
//  ViewController.m
//  LCLoadingHUDDemo
//
//  Created by Leo on 15/11/17.
//  Copyright © 2015年 Leo. All rights reserved.
//

#import "ViewController.h"
#import "LCLoadingHUD.h"

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"LCLoadingHUDDemo";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left" style:UIBarButtonItemStyleDone target:self action:@selector(leftBtnClicked)];
}

- (void)leftBtnClicked {
    
    NSLog(@"你点击到了 leftBtn");
}

#pragma mark -

- (void)dismissKeyHUD {
    
    [LCLoadingHUD hideInKeyWindow];
}

- (void)dismissInViewHUD {
    
    [LCLoadingHUD hideInView:self.view];
}

#pragma mark -

- (IBAction)showBtnClicked {
    
    [LCLoadingHUD showLoading:@"正在发射中..."];
    
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(dismissKeyHUD) userInfo:nil repeats:NO];
}

- (IBAction)InViewBtnClicked {
    
    [LCLoadingHUD showLoading:@"你可以点 leftBtn" inView:self.view];
    
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(dismissInViewHUD) userInfo:nil repeats:NO];
}

@end
