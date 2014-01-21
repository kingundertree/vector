//
//  DIMainViewController.m
//  vectorDemo
//
//  Created by 夏至 on 14-1-20.
//  Copyright (c) 2014年 dooioo. All rights reserved.
//

#import "DIMainViewController.h"

#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
#define IOS7_SDK_AVAILABLE 1

@interface DIMainViewController ()

@end

@implementation DIMainViewController

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
    self.title = @"ios 绘图功能";
    if (IOS7_SDK_AVAILABLE) {
        if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)])
        {
            self.edgesForExtendedLayout = UIRectEdgeNone;
        }
    }
    self.menuTab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, SCREENHEIGHT-64) style:UITableViewStylePlain];
    self.menuTab.dataSource = self;
    self.menuTab.delegate = self;
    [self.view addSubview:self.menuTab];
}
#pragma mark -
#pragma mark tableview
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10.0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = (UITableViewCell*)[tableView  dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = [NSString stringWithFormat:@"%ld-->>常规绘图、曲线、直线",(long)indexPath.row];
    }else{
        cell.textLabel.text = [NSString stringWithFormat:@"num-->>%ld",(long)indexPath.row];
    }
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        self.onePageVC = [[DIOnePageViewController alloc] init];
        [self.navigationController pushViewController:self.onePageVC animated:YES];
    }
    
    NSLog(@"indexPath---->>%ld",(long)indexPath.row);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
