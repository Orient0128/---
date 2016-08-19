//
//  UIView+OtExtension.h
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

//分类，只能扩充方法
//写@property属性只会生成方法的声明，不会生成方法的实现和带有_的成员变量

#import <UIKit/UIKit.h>

@interface UIView (OtExtension)

@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;

@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
/*
 @property (nonatomic,assign) CGFloat x;
 相当于只写了get和set方法的声明：
-(float)x;
-(void)setx:(CGFloat)x;
*/
@end
