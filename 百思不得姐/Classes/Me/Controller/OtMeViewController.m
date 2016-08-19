//
//  OtMeViewController.m
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OtMeViewController.h"

@interface OtMeViewController ()

@end

@implementation OtMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = OtGlobleColor;

    self.navigationItem.title = @"我";
    
    UIBarButtonItem *setButtonItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highLightImage:@"mine-setting-icon-click" target:self action:@selector(setClick)];

    UIBarButtonItem *moonButtonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highLightImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[setButtonItem,moonButtonItem];
}

-(void)setClick {
    OtLogFunc;
}

-(void)moonClick {
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
