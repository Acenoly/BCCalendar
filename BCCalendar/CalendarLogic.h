//
//  BCClassButton.m
//  MUSTBEE
//
//  Created by zbc on 15/10/19.
//  Copyright © 2015年 zbc. All rights reserved.
//v
#import <Foundation/Foundation.h>
#import "CalendarDayModel.h"
#import "NSDate+WQCalendarLogic.h"

@interface CalendarLogic : NSObject

- (NSMutableArray *)reloadCalendarView:(NSDate *)date  selectDate:(NSDate *)date1 needDays:(int)days_number;
- (void)selectLogic:(CalendarDayModel *)day;
@end
