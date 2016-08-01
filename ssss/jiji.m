

//
//  jiji.m
//  ssss
//
//  Created by jiayazi on 16/8/1.
//  Copyright © 2016年 dbjyz. All rights reserved.
//

#import "jiji.h"

@implementation jiji

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        [self addview];
    }
    return self;
}

-(void)addview{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(20, 20, 120, 80);
    [btn addTarget:self action:@selector(kkk) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
}

//只有当点击按钮是才会触发
-(void)kkk{
    //这是Block的成员变量的触发
    _insert(@"hello there");
}


//这是方法，会直接触发（可以直接在任何页面调用）
-(void)insertPingContent:(void(^)(NSString *content ,NSString *whos)) content{
    content(@"我是评论内容",@"贾亚子");
}

@end
