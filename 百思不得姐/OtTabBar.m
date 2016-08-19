//
//  OtTabBar.m
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "OtTabBar.h"

@interface OtTabBar ()

@property (nonatomic,weak) UIButton *plusBtn;

@end

@implementation OtTabBar


//自定义控件代码
-(instancetype)initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        UIButton *plusBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateSelected];
        [self addSubview:plusBtn];
        self.plusBtn = plusBtn;
        
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat width = self.width;
    CGFloat height = self.height;
    //设置plusBtn的frame
    self.plusBtn.width = self.plusBtn.currentBackgroundImage.size.width;
    self.plusBtn.height = self.plusBtn.currentBackgroundImage.size.height;
    self.plusBtn.center = CGPointMake(width / 2, height / 2);
    
    float btnY = 0;
    float btnW = width / 5;
    float btnH = height;
    NSInteger index = 0;
    //设置其他Button的frame
    for (UIView *btn in self.subviews)
    {
//        if (![btn isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        if (![btn isKindOfClass:[UIControl class]] || btn == self.plusBtn) continue;   //功能同上
        
//        if (index == 2) {
//            index = 3;
//        }
        float btnX = btnW * ((index > 1)?(index + 1):index);
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        index++;
    }
}

@end
