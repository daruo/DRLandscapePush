//
//  ViewController.m
//  DRPushLandscape
//
//  Created by Daruo on 2018/7/2.
//  Copyright © 2018年 BeeSmart. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Daruo01";
    self.view.backgroundColor = [UIColor purpleColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80, 100, 200 ,50)];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:13];
    label.backgroundColor = [UIColor whiteColor];
    label.text = @"点击屏幕push到横屏控制器";
    [self.view addSubview:label];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    ViewController2 *v2 = [ViewController2 new];
    AppDelegate * delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    delegate.allowRotation = 1;
    [self orientationToPortrait:UIInterfaceOrientationLandscapeLeft];
    [self.navigationController pushViewController:v2 animated:YES];
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
