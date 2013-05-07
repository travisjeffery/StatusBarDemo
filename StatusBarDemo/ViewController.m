//
//  ViewController.m
//  StatusBarTest
//
//  Created by Travis Jeffery on 5/6/13.
//  Copyright (c) 2013 Travis Jeffery. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    CGRect statusBarFrame = [[UIApplication sharedApplication] statusBarFrame];
    CGRect convertedFrame = [self.view.window convertRect:statusBarFrame toView:self.view];
    NSLog(@"statusBarFrame: as is %@, converted %@", NSStringFromCGRect(statusBarFrame), NSStringFromCGRect(convertedFrame));
}

@end
