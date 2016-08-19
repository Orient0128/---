//
//  OtTabBarController.m
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OtTabBarController.h"

@interface OtTabBarController ()

@end

@implementation OtTabBarController

+ (void)initialize {
    
    //设置tabbar按钮文字选中颜色
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *att = [NSMutableDictionary dictionary];
    att[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    att[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:att forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setUpAllChildViewController];
    
}

-(void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title {
    
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = image;
    //选中图片设置显示为原始图片
    selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = selImage;
    
    [self addChildViewController:vc];
    
}

-(void)setUpAllChildViewController {
    
    UIViewController *vc01 = [[UIViewController alloc] init];
    vc01.view.backgroundColor = [UIColor grayColor];
    
    [self setUpOneChildViewController:vc01 image:[UIImage imageNamed:@"tabBar_essence_icon"] selImage:[UIImage imageNamed:@"tabBar_essence_click_icon"] title:@"精华"];
    
    UIViewController *vc02 = [[UIViewController alloc] init];
    vc02.view.backgroundColor = [UIColor lightGrayColor];
    
    [self setUpOneChildViewController:vc02 image:[UIImage imageNamed:@"tabBar_new_icon"] selImage:[UIImage imageNamed:@"tabBar_new_click_icon"] title:@"新帖"];
    
    UIViewController *vc03 = [[UIViewController alloc] init];
    vc03.view.backgroundColor = [UIColor greenColor];

    [self setUpOneChildViewController:vc03 image:[UIImage imageNamed:@"tabBar_friendTrends_icon"] selImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"] title:@"关注"];
    
    UIViewController *vc04 = [[UIViewController alloc] init];
    vc04.view.backgroundColor = [UIColor yellowColor];

    [self setUpOneChildViewController:vc04 image:[UIImage imageNamed:@"tabBar_me_icon"] selImage:[UIImage imageNamed:@"tabBar_me_click_icon"] title:@"我"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
