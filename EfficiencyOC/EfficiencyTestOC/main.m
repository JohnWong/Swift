//
//  main.m
//  EfficiencyTestOC
//
//  Created by John Wong on 9/7/14.
//  Copyright (c) 2014 John Wong. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 NSTimeInterval beforeTimeStamp = [[NSDate date]timeIntervalSince1970];
 int i = 0;
 for(int i =0; i < 10000000; i++) {
 int t = i;
 }
 NSTimeInterval afterTimeStamp = [[NSDate date]timeIntervalSince1970];
 printf("%f", afterTimeStamp - beforeTimeStamp);
 }
 return 0;
 }
 // Loop in Objective-C
 //   100,000        0.00022
 //  1000,000        0.00220
 // 10000,000        0.02398
 */

/*
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSTimeInterval beforeTimeStamp = [[NSDate date]timeIntervalSince1970];
        NSMutableArray *array = [NSMutableArray new];
        for(int i =0; i < 10000000; i++) {
            [array addObject:@1];
        }
        NSTimeInterval afterTimeStamp = [[NSDate date]timeIntervalSince1970];
        printf("%f", afterTimeStamp - beforeTimeStamp);
    }
    return 0;
}
// Array append integer in Objective-C
//   100,000        0.00427
//  1000,000        0.04947
// 10000,000        0.42898
*/

/*
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSTimeInterval beforeTimeStamp = [[NSDate date]timeIntervalSince1970];
        NSMutableArray *array = [NSMutableArray new];
        for(int i =0; i < 100000; i++) {
            [array addObject:@"1"];
        }
        NSTimeInterval afterTimeStamp = [[NSDate date]timeIntervalSince1970];
        printf("%f", afterTimeStamp - beforeTimeStamp);
    }
    return 0;
}
// Array append string in Objective-C
//   100,000        0.00362
//  1000,000        0.04445
// 10000,000        0.38629
*/

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSTimeInterval beforeTimeStamp = [[NSDate date]timeIntervalSince1970];
        NSMutableString *string = [NSMutableString new];
        for(int i =0; i < 10000000; i++) {
            [string appendString:@"1"];
        }
        NSTimeInterval afterTimeStamp = [[NSDate date]timeIntervalSince1970];
        printf("%f", afterTimeStamp - beforeTimeStamp);
    }
    return 0;
}
// String append in Objective-C
//   100,000        0.00533
//  1000,000        0.06501
// 10000,000        0.53922