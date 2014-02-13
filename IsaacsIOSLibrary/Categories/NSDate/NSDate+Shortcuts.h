//
//  NSDate+Shortcuts.h
//  IsaacsIOSLibrary
//
//  Created by Isaac Paul on 2/12/14.
//  Copyright (c) 2014 Isaac Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Shortcuts)

- (NSDate*)tomorrow;
- (NSDate*)yesterday;
- (NSDate*)today;
- (NSDate*)dateOffsettedByDays:(int)days;

- (NSDateComponents*)componentsYMD;
- (NSDateComponents*)componentsOfTimeSinceDate:(NSDate*)date;

@end
