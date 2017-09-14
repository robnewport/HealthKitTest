//
//  ViewController.m
//  HealthKitTest
//
//  Created by Rob Newport on 9/14/17.
//  Copyright © 2017 Robnewport. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    HealthKitLibrary *hkLib = [HealthKitLibrary sharedManager];

    [hkLib setDateOfBirthCompletionBlock: ^ void (NSString *dob) {
        NSLog(@"Date Of Birth: %@", dob);
    }];

    [hkLib setWeightCompletionBlock: ^ void (NSString *weight) {
        NSLog(@"weight: %@ lbs", weight);
    }];

    [hkLib setHeightCompletionBlock: ^ void (NSString *height) {
        NSLog(@"height: %@ inches", height);
    }];

    [hkLib queryHealthKit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
