//
//  AppDelegate.h
//  DRPushLandscape
//
//  Created by Daruo on 2018/7/2.
//  Copyright © 2018年 BeeSmart. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
/** 是否允许横屏的标记 */
@property (nonatomic,assign) BOOL allowRotation;

@end

