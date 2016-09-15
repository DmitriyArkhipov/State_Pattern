//
//  StatePattern.m
//  state_pattern
//
//  Created by Dmitriy Arkhipov on 13.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "StatePattern.h"

@implementation Machine

- (instancetype) init {

    self = [super init];

    if (self) {
        _activeState = [[OFF alloc] init];
    }

    return self;

}

- (void) setState:(State *)state {

    _activeState = state;

}


- (void) on {

    [_activeState on:self];

}

- (void) off {

    [_activeState off:self];

}


@end


@implementation State

- (void) on:(id)machine {

    NSLog(@"   already ON");

}

- (void) off:(id)machine {

    NSLog(@"   already OFF");

}

@end


@implementation ON

- (instancetype) init {

    self = [super init];
    if (self) {
        NSLog(@"ON init");
    }

    return self;
}

- (void) off:(id)machine {


    if (![machine isKindOfClass:[Machine class]]) {
        return;
    }

    NSLog(@"     going from ON to OFF");

    OFF *off = [[OFF alloc] init];

    [machine setState:off];

}

@end


@implementation OFF

- (instancetype) init {

    self = [super init];
    if (self) {
        NSLog(@"OFF init");
    }

    return self;
}

- (void) on:(id)machine {

    if (![machine isKindOfClass:[Machine class]]) {
        return;
    }

    NSLog(@"     going from OFF to ON");

    ON *on = [[ON alloc] init];

    [machine setState:on];

}

@end