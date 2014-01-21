//
//  DIOnePageViewController.m
//  vectorDemo
//
//  Created by 夏至 on 14-1-20.
//  Copyright (c) 2014年 dooioo. All rights reserved.
//

#import "DIOnePageViewController.h"

#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
#define IOS7_SDK_AVAILABLE 1

@interface DIOnePageViewController ()

@end

@implementation DIOnePageViewController

//@synthesize drawView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"onePage-常规绘图、曲线、直线";
    
    if (IOS7_SDK_AVAILABLE) {
        if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]){
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
    }
    
    self.view = [[DIDrawView alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
