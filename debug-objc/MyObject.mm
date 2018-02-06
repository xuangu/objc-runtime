//
//  MyObject.m
//  objc
//
//  Created by 顾晅 on 2018/1/29.
//
//

#import "MyObject.h"
//#import "runtime.h"

@implementation MyObject

- (instancetype)init {
    self = [super init];
    if (self) {
//        NSLog(@"class object from instance method self :%x", object_getClass(self));
        [MyObject classPointer];
        [MyObject metaclassPointer];
    }
    
    return self;
}


+ (void)classPointer {
    NSLog(@"class object from class method self:%x", self);
}


+ (void)metaclassPointer {
//    NSLog(@"metaclass object:%x", object_getClass(self));
}


+ (void)metaclassPointerISA {
//    NSLog(@"metaclass object:%x", object_getClass(self)->ISA());
}

@end
