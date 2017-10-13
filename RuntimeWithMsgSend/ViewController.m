//
//  ViewController.m
//  RuntimeWithMsgSend
//
//  Created by 侯春娇 on 2017/9/30.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self sendMsg:@"参数"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)sendMsg:(NSString *)str{
    NSLog(@"发送消息");
}

// MARK: 动态解析方法
+ (BOOL)resolveClassMethod:(SEL)sel{
    return YES;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    return YES;
}

// MARK: 备援接收
- (id)forwardingTargetForSelector:(SEL)aSelector{
    return [[NSString alloc] init];
}

// MARK: 完整消息转发
- (void)forwardInvocation:(NSInvocation *)anInvocation{
    
}

// MARK: 捕获异常方法
- (void)doesNotRecognizeSelector:(SEL)aSelector{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
