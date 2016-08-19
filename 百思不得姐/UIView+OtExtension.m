//
//  UIView+OtExtension.m
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

#import "UIView+OtExtension.h"

@implementation UIView (OtExtension)

//对.h中声明的方法进行实现,封装

//set方法
-(void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

-(void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

//get方法
-(CGFloat)width {
    return self.frame.size.width;
}

-(CGFloat)height {
    return self.frame.size.height;
}

-(CGFloat)x {
    return self.frame.origin.x;
}

-(CGFloat)y {
    return self.frame.origin.y;
}
@end
