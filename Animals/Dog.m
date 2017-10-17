//
//  Dog.m
//  RuntimeWithMsgSend
//
//  Created by 侯春娇 on 2017/10/11.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "Dog.h"
#import "Cat.h"
#import <objc/runtime.h>

@implementation Dog

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
//    if (aSelector == @selector(sayHello)) {
//        return [[Cat alloc] init];
//    }
    if ([NSStringFromSelector(aSelector) isEqualToString:@"sayHello"]) {
        return [[Cat alloc] init];
    }
    return [super forwardingTargetForSelector:aSelector];
}

@end
