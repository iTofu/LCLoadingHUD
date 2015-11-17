//
//  LCLoadingHUD.m
//  CLProgressHUDDemo
//
//  Created by Leo on 15/11/17.
//  Copyright © 2015年 Leo. All rights reserved.
//

#import "LCLoadingHUD.h"

@interface LCLoadingHUD ()

+ (instancetype)shared;

@property (nonatomic, strong) LCLoadingHUD *loadingHUD;

@end

@implementation LCLoadingHUD

- (LCLoadingHUD *)loadingHUD {
    
    if (!_loadingHUD) {
        
        _loadingHUD       = [[LCLoadingHUD alloc] initWithView:[UIApplication sharedApplication].keyWindow];
        _loadingHUD.shape = CLProgressHUDShapeLinear;
        _loadingHUD.type  = CLProgressHUDTypeDarkForground;
    }
    return _loadingHUD;
}

+ (instancetype)shared {
    
    static LCLoadingHUD *loadingHUD = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        loadingHUD = [[LCLoadingHUD alloc] init];
    });
    return loadingHUD;
}

+ (instancetype)showLoading:(NSString *)text inView:(UIView *)view {
    
    LCLoadingHUD *hud = [[LCLoadingHUD alloc] initWithView:view];
    hud.text  = text ?: @"";
    hud.shape = CLProgressHUDShapeLinear;
    hud.type  = CLProgressHUDTypeDarkForground;
    [view addSubview:hud];
    [hud showWithAnimation:YES];
    
    return hud;
}

+ (void)showLoading:(NSString *)text {
    
    if (![UIApplication sharedApplication].keyWindow) {
        
        NSLog(@"Error: Your keyWindow is nil!");
        
        return;
    }
    
    LCLoadingHUD *loadingHUD = [LCLoadingHUD shared].loadingHUD;
    loadingHUD.text = text ?: @"";
    [[UIApplication sharedApplication].keyWindow addSubview:loadingHUD];
    [loadingHUD showWithAnimation:YES];
}

+ (void)dismissInKeyWindow {
    
    LCLoadingHUD *loadingHUD = [LCLoadingHUD shared].loadingHUD;
    [loadingHUD dismissWithAnimation:YES];
    [LCLoadingHUD shared].loadingHUD = nil;
}

@end
