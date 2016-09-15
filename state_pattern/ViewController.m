//
//  ViewController.m
//  state_pattern
//
//  Created by Dmitriy Arkhipov on 13.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "ViewController.h"

#import "StatePattern.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        Machine *machine = [[Machine alloc] init];
    
        [machine off];
        [machine on];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
