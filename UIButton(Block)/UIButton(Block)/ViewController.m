//
//  ViewController.m
//  UIButton(Block)
//
//  Created by 全球蛙 on 2016/11/19.
//  Copyright © 2016年 全球蛙. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Category.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithtitle:@"ddddd" frame:CGRectMake(0, 100, 60, 30) backColor:[UIColor redColor] backGroundImage:[UIImage imageNamed:@""] action:^(UIButton *button) {
     
        self.view.backgroundColor = [UIColor purpleColor];
        
        
    }];
    [self.view addSubview:button];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
