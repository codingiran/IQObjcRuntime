//
//  IQObjcRuntime.m
//  IQObjcRuntime
//
//  Created by CodingIran on 2023/6/21.
//  Copyright © 2023 CodingIran. All rights reserved.
//

#import "IQObjcRuntime.h"

@implementation NSMethodSignature (IQObjcRuntime)

- (NSString *)iq_typeString {
    BeginIgnorePerformSelectorLeaksWarning
    NSString *typeString = [self performSelector:NSSelectorFromString([NSString stringWithFormat:@"_%@String", @"type"])];
    EndIgnorePerformSelectorLeaksWarning
    return typeString;
}

- (const char *)iq_typeEncoding {
    return self.iq_typeString.UTF8String;
}

@end
