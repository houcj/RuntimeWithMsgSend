//
//  Cat.m
//  RuntimeWithMsgSend
//
//  Created by 侯春娇 on 2017/10/11.
//  Copyright © 2017年 侯春娇. All rights reserved.
//

#import "Cat.h"
#import <objc/runtime.h>

@implementation Cat

void say(id self, SEL _cmd){
    NSLog(@"say-----%@",self);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    if ([NSStringFromSelector(sel) isEqualToString:@"sayHello"]) {
        class_addMethod([self superclass], sel, (IMP)say, "v@:");
//        class_addMethod([self class], sel, (IMP)say, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

@end
