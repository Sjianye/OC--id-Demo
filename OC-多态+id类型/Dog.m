//
//  Dog.m
//  OC-多态+id类型
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)showInfo
{
    NSLog(@"Dog:%@,%g",_dName,_price);
}
-(void)dealloc
{
    NSLog(@"Dog:%@释放了...",_dName);
}
-(void)showDog{
    NSLog(@"Dog:%@,%g",_dName,_price);
}
@end
