//
//  DIAppDelegate.h
//  vectorDemo
//
//  Created by 夏至 on 14-1-20.
//  Copyright (c) 2014年 dooioo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DIMainViewController.h"

@interface DIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) DIMainViewController *mainVC;
@property (strong, nonatomic) UINavigationController *nav;
@end
