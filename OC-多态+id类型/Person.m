//
//  Person.m
//  OC-多态+id类型
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)showInfo
{
    NSLog(@"Person:%@,%d",_name,_age);
}
-(void)dealloc
{
    NSLog(@"%@释放了...",_name);
}
+(void)showClass
{
    NSLog(@"%@",[self class]);//打印当前类名
}
@end
