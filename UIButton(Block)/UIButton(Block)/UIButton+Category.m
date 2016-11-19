//
//  UIButton+Category.m
//  UIButton(Block)
//
//  Created by 全球蛙 on 2016/11/19.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

#import "UIButton+Category.h"
#import <objc/runtime.h>

@implementation UIButton (Category)

static NSString *const  blockPropertyKey = @"blockPropertyKey";
static NSString *const  blockMethodKey = @"blockMethodKey";

- (void)setAction:(buttonAction)action
{
    objc_setAssociatedObject(self, &blockPropertyKey, self.action, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (buttonAction)action
{
    
    return  objc_getAssociatedObject(self, &blockPropertyKey);
    
}

+(UIButton *)buttonWithtitle:(NSString *)title
                       frame:(CGRect)frame
                   backColor:(UIColor *)color
             backGroundImage:(UIImage *)image
                      action:(buttonAction)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    button.frame = frame;
    //
    [button addTarget:button action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    objc_setAssociatedObject(button, &blockMethodKey,action, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    return button;
    
}


- (void)buttonAction:(UIButton *)btn
{
    
    buttonAction action = objc_getAssociatedObject(btn, &blockMethodKey);
    
    if (action) {
        action(btn);
    }
    
}


@end
