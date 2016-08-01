//
//  jiji.h
//  ssss
//
//  Created by jiayazi on 16/8/1.
//  Copyright © 2016年 dbjyz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface jiji : UIView


//需要在A中触发，才能在B中执行的，我们要定义成Block型的成员变量（可以直接代替代理）
@property (nonatomic, copy) void(^insert)(NSString *jiamsg);

//不需要再触发，直接在B中  调用使用的要定义成方法
-(void)insertPingContent:(void(^)(NSString *content ,NSString *whos)) content;

@end
