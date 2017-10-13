//
//  Rabbit.m
//  RuntimeWithMsgSend
//
//  Created by 侯春娇 on 2017/10/11.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "Rabbit.h"
#import "Cat.h"

@implementation Rabbit

- (void)rabbitSayHello{
    NSLog(@"rabbitSayHello------%@",self);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    return nil;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    if ([NSStringFromSelector(aSelector) isEqualToString:@"sayHello"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    
    // 改变对象
    [anInvocation invokeWithTarget:[[Cat alloc] init]];
    
    // 改变选择子
//    anInvocation.selector = @selector(rabbitSayHello);
//    [anInvocation invokeWithTarget:self];
}

@end
