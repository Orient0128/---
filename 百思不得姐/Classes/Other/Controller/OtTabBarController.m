//
//  OtTabBarController.m
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OtTabBarController.h"
#import "OtTabBar.h"
#import "OtNavigationController.h"
#import "OtMeViewController.h"
#import "OtNewViewController.h"
#import "OtEssenceViewController.h"
#import "OtFriendTrendsViewController.h"

@interface OtTabBarController ()

@end

@implementation OtTabBarController

//设置全局
+ (void)initialize {
    
    //通过appearance统一设置所有UITabBarItem文字属性
    //后面带有UI_APPEARANCE_SELECTOR的方法都可以通过appearance对象统一设置
    UITabBarItem *item = [UITabBarItem appearance];
    
    NSMutableDictionary *att = [NSMutableDictionary dictionary];
    att[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    att[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    
    NSMutableDictionary *selAtt = [NSMutableDictionary dictionary];
    selAtt[NSFontAttributeName] = att[NSFontAttributeName];
    selAtt[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    [item setTitleTextAttributes:att forState:UIControlStateNormal];
    [item setTitleTextAttributes:selAtt forState:UIControlStateSelected];
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    [self setUpAllChildViewController];
    
    //self.tabBar为只读，所以利用KVC更换tabbar
    [self setValue:[[OtTabBar alloc] init] forKeyPath:@"tabBar"];
    
}

-(void)setUpOneChildViewController:(UIViewController *)vc image:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title {
    
//    vc.view.backgroundColor = [UIColor colorWithRed:223/255.0 green:223/255.0 blue:223/255.0 alpha:1.0];在这里设置颜色会导致控制器view被提前创建
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = image;
    //选中图片设置显示为原始图片
    selImage = [selImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = selImage;
    
    //包装一个导航控制器，添加导航控制器为tabBarController为子控制器
    OtNavigationController *nav = [[OtNavigationController alloc] initWithRootViewController:vc];
//改为如下语句，更改所有navigationbar背景图
//    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];

    [self addChildViewController:nav];
    
//    [self addChildViewController:vc];
    
}

-(void)setUpAllChildViewController {
    
    
    [self setUpOneChildViewController:[[OtEssenceViewController alloc] init] image:[UIImage imageNamed:@"tabBar_essence_icon"] selImage:[UIImage imageNamed:@"tabBar_essence_click_icon"] title:@"精华"];
    
    [self setUpOneChildViewController:[[OtNewViewController alloc] init] image:[UIImage imageNamed:@"tabBar_new_icon"] selImage:[UIImage imageNamed:@"tabBar_new_click_icon"] title:@"新帖"];
    
    [self setUpOneChildViewController:[[OtFriendTrendsViewController alloc] init] image:[UIImage imageNamed:@"tabBar_friendTrends_icon"] selImage:[UIImage imageNamed:@"tabBar_friendTrends_click_icon"] title:@"关注"];
    
    [self setUpOneChildViewController:[[OtMeViewController alloc] init] image:[UIImage imageNamed:@"tabBar_me_icon"] selImage:[UIImage imageNamed:@"tabBar_me_click_icon"] title:@"我"];
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
