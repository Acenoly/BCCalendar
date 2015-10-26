//
//  JudgeMent.m
//  MUSTBEE
//
//  Created by zbc on 15/10/26.
//  Copyright © 2015年 zbc. All rights reserved.
//

#import "JudgeMent.h"

@implementation JudgeMent



+(int) judgeMent{
    if([UIScreen mainScreen].bounds.size.height > 700){
        return 0;//6 p
    }
    else if([UIScreen mainScreen].bounds.size.height > 600 && [UIScreen mainScreen].bounds.size.height < 700){
        return 1;// 6
    }
    else if([UIScreen mainScreen].bounds.size.height> 500 && [UIScreen mainScreen].bounds.size.height<600){
        return 2; //5s
    }
    else{
        return 3; //4s
    }
}

@end
