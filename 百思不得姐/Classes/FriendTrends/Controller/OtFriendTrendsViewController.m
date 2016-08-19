//
//  OtFriendTrendsViewController.m
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OtFriendTrendsViewController.h"

@interface OtFriendTrendsViewController ()

@end

@implementation OtFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = OtGlobleColor;

    //slef.title = @"我的关注";会连下面按钮的文字一起改变，相当于
    /*
     *self.navigationItem.title = @"我的关注";
     *self.tabBarItem.title = @"我的关注";
     */
    self.navigationItem.title = @"我的关注";
    
//    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highLightImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsClick)];

}

-(void)friendsClick {
    OtLogFunc;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
