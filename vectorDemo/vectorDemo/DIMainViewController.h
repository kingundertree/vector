//
//  DIMainViewController.h
//  vectorDemo
//
//  Created by 夏至 on 14-1-20.
//  Copyright (c) 2014年 dooioo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DIOnePageViewController.h"

@interface DIMainViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *menuTab;
@property(nonatomic,strong) DIOnePageViewController *onePageVC;
@end
