//
//  ViewController.m
//  Singleton
//
//  Created by Marcin Krzych on 27/01/15.
//  Copyright (c) 2015 Marcin Krzych. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Getting first instance");
    Singleton* s1 = [Singleton sharedInstance];
    [s1 showCounter];
    
    NSLog(@"Getting second instance");
    Singleton* s2 = [Singleton sharedInstance];
    [s2 showCounter];
    
    NSLog(@"Getting third instance");
    Singleton* s3 = [Singleton sharedInstance];
    [s3 showCounter];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
