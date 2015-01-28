//
//  Singleton.h
//  Singleton
//
//  Created by Marcin Krzych on 27/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

@property (nonatomic) int counter;

+ (Singleton*)sharedInstance;

- (void)showCounter;

@end
