//
//  StatePattern.h
//  state_pattern
//
//  Created by Dmitriy Arkhipov on 13.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface State : NSObject

- (void) on:(id)machine;
- (void) off:(id)machine;

@end

@interface Machine : NSObject

@property (strong, nonatomic) State *activeState;

- (void) setState:(State *)state;

- (void) on;
- (void) off;

@end

@interface ON : State

- (void) off:(id)machine;

@end

@interface OFF : State

- (void) on:(id)machine;

@end