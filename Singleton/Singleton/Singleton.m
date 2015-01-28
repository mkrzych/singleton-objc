//
//  Singleton.m
//  Singleton
//
//  Created by Marcin Krzych on 27/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

@synthesize counter;

- (id)init {
    self = [super init];
    if(self) {
        counter++;
        NSLog(@"Singleton init, counter: %d", counter);
    }
    return self;
}

+ (Singleton*)sharedInstance {
    static Singleton* instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[Singleton alloc] init];
    });
    return instance;
}

- (void)showCounter {
    NSLog(@"Show counter = %d", counter);
}

@end
