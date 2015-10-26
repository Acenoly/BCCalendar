//
//  BCCalendarViewController.m
//  BCCalendarDemo
//
//  Created by zbc on 15/10/26.
//  Copyright © 2015年 zbc. All rights reserved.
//

#import "BCCalendarViewController.h"

@interface BCCalendarViewController ()

@end

@implementation BCCalendarViewController


int daynumber;//天数


- (void)viewDidLoad {
    [super viewDidLoad];
    
    daynumber = 365;
    super.calendarMonth = [self getMonthArrayOfDayNumber:daynumber ToDateforString:nil];
    [super.collectionView reloadData];//刷新
    
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

-(void) dateDidClick:(CalendarDayModel *)model{
    [super dateDidClick:model];
    NSLog(@"%lu,%lu",(unsigned long)model.month,(unsigned long)model.day);
}

//获取时间段内的天数数组
- (NSMutableArray *)getMonthArrayOfDayNumber:(int)day ToDateforString:(NSString *)todate
{
    
    NSDate *date = [NSDate date];
    
    NSDate *selectdate  = [NSDate date];
    
    if (todate) {
        
        selectdate = [selectdate dateFromString:todate];
        
    }
    
    self.Logic = [[CalendarLogic alloc]init];
    
    return [self.Logic reloadCalendarView:date selectDate:selectdate  needDays:day];
}

@end
