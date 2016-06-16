//
//  AppDelegate.m
//  objc-array-practice
//
//  Created by Flatiron School on 5/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Override point for customization after application launch.
    
    
    return YES;
}

- (NSString *)assigningTeacher:(NSArray *)teacherRoster toRooms:(NSArray *)rooms {
    NSString *result = @"";
    NSUInteger num = [teacherRoster count];
    for(NSUInteger i = 0; i < num - 1; i++) {
        result = [result stringByAppendingFormat:@"Welcome %@, your classroom is %@.\n", teacherRoster[i], rooms[i]];
    }
    result = [result stringByAppendingFormat:@"Welcome %@, your classroom is %@.", teacherRoster[num-1], rooms[num-1]];
    return result;
}

- (NSArray *)replacingTeacher:(NSArray *)teacherRoster withteacher:(NSString *)substitute {
    NSMutableArray *result = [teacherRoster mutableCopy];
    [result removeObject:@"Mrs. Jacobs"];
    [result addObject:substitute];
    return result;
}

- (NSUInteger)duplicateStudent:(NSArray *)mathClass student:(NSString *)student {
    NSUInteger result = 0;
    for(NSString *stud in mathClass) {
        if([stud isEqualToString:student]) {
            result++;
        }
    }
    return result;
}

- (NSString *)signForPrinter:(NSArray *)backwardsPhrase {
    NSString *result = @"";
    for(NSInteger i = [backwardsPhrase count] - 1; i > -1 ; i--) {
        result = [result stringByAppendingFormat:@"%@ ", backwardsPhrase[i]];
    }
    return result;
}

- (NSArray *)removeOpeningAndClosingShifts:(NSArray *)schedule {
    NSMutableArray *result = [schedule mutableCopy];
    [result removeObjectAtIndex:0];
    [result removeObjectAtIndex:[result count]-1];
    return result;
}




@end