//
//  UIButton+Category.h
//  UIButton(Block)
//
//  Created by 全球蛙 on 2016/11/19.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^buttonAction)(UIButton *button);

@interface UIButton (Category)

@property (nonatomic,strong)buttonAction action;

+ (UIButton *)buttonWithtitle:(NSString *)title
                        frame:(CGRect)frame
                    backColor:(UIColor *)color
              backGroundImage:(UIImage *)image
                       action:(buttonAction)action;

@end
