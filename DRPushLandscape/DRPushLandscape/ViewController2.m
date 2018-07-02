//
//  ViewController2.m
//  DRPushLandscape
//
//  Created by Daruo on 2018/7/2.
//  Copyright © 2018年 BeeSmart. All rights reserved.
//

#import "ViewController2.h"
#import "AppDelegate.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Daruo02";
    self.view.backgroundColor = [UIColor orangeColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(150, 100, 200 ,50)];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:13];
    label.backgroundColor = [UIColor whiteColor];
    label.text = @"点击屏幕返回到竖屏控制器";
    [self.view addSubview:label];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
     [self.navigationController popViewControllerAnimated:YES];
    
}

-(void)viewWillDisappear:(BOOL)animated {
    AppDelegate * delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.allowRotation = 0;
    [self orientationToPortrait:UIInterfaceOrientationPortrait];
   
}

- (void)orientationToPortrait:(UIInterfaceOrientation)orientation {
    SEL selector = NSSelectorFromString(@"setOrientation:");
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
    [invocation setSelector:selector];
    [invocation setTarget:[UIDevice currentDevice]];
    int val = orientation;
    [invocation setArgument:&val atIndex:2];//前两个参数已被target和selector占用
    [invocation invoke];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
