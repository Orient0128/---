//
//  UIBarButtonItem+OtExtension.h
//  百思不得姐
//
//  Created by Orient on 16/8/19.
//  Copyright © 2016年 Orient. All rights reserved.
//

//UIBarButtonItem创建的封装
#import <UIKit/UIKit.h>

@interface UIBarButtonItem (OtExtension)

+(instancetype)itemWithImage:(NSString *)image highLightImage:(NSString *)highLightImage target:(id)target action:(SEL)action;



@end
