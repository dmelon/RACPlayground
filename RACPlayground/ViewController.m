//
//  ViewController.m
//  RACPlayground
//
//  Created by ChenDong on 2017/10/9.
//  Copyright © 2017年 dmelon. All rights reserved.
//

#import "ViewController.h"
#import <RACSignal.h>
#import <RACSequence.h>
#import <RACScheduler.h>
#import <NSArray+RACSequenceAdditions.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray *numbers = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < 10; i++) {
        [numbers addObject:[NSNumber numberWithInteger:i]];
    }
    
    [[numbers.rac_sequence signalWithScheduler:RACScheduler.mainThreadScheduler] subscribeNext:^(id  _Nullable x) {
        NSLog(@"%@",x);           //(2)
    }];
}

@end
