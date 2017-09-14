//
//  HealthKitLibrary.h
//  HealthKitLibrary
//
//  Created by Rob Newport on 9/14/17.
//  Copyright © 2017 Robnewport. All rights reserved.
//

#import <Foundation/Foundation.h>

@import HealthKit;

@interface HealthKitLibrary : NSObject

// Singleton Class initiated: [HealthKitLibrary sharedManager];
+(id)sharedManager;

// Set blocks to manage returned data
@property (nonatomic) void (^dateOfBirthCompletionBlock)(NSString *);
@property (nonatomic) void (^weightCompletionBlock)(NSString *);
@property (nonatomic) void (^heightCompletionBlock)(NSString *);

// Call queryHealthKit after you set blocks to manage returned data
-(void)queryHealthKit;

@end
