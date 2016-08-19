//
//  OtNavigationController.m
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OtNavigationController.h"

@interface OtNavigationController ()

@end

@implementation OtNavigationController


//第一次使用这个类的时候调用一次
+(void)initialize {
    
    //    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];效果同下代码,但这行代码只设置本类种的navigationbar，下句是全局设置:UINavigationBar *bar = [UINavigationBar appearance];
    //
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

//重写push:可以在这个方法中拦截所有push进来的控制器
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    //自定义返回按钮
    if (self.childViewControllers.count > 0) {//如果push进来的不是第一个控制器
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"返回" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        btn.size = CGSizeMake(60, 30);
        
        //按钮内部内容边距
        btn.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        //按钮内部所有内容居左
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//        [btn sizeToFit];
        [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
        //push后隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    //这句super的push要放在后面，让viewcontroller可以覆盖上面设置的lefbarbuttonitem
    [super pushViewController:viewController animated:animated];

}

-(void)back {
    
    [self popViewControllerAnimated:YES];
}

//重写pop
//-(void)popViewController:(UIViewController *)viewController animated:(BOOL)animated {
//    [super pushViewController:viewController animated:animated];
//
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
