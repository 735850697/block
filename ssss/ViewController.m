//
//  ViewController.m
//  ssss
//
//  Created by jiayazi on 16/8/1.
//  Copyright © 2016年 dbjyz. All rights reserved.
//

#import "ViewController.h"
#import "jiji.h"

@interface ViewController ()
@property(strong, nonatomic)jiji * jia;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _jia = [[jiji alloc] initWithFrame:CGRectMake(80, 80, 120,120)];
    [self.view addSubview:_jia];
    
    //直接调用方法（会直接执行触发使用）
    [_jia insertPingContent:^(NSString *content, NSString *whos) {
        NSLog(@"jjj == %@+++++%@",content,whos);
    }];
    
    
    //只是定义不会触发，成员变量Block（只有在A中点击按钮触发是，才会执行之方法）
    [_jia setInsert:^(NSString * jia) {
        NSLog(@"jia == %@",jia);
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
