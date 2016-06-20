//
//  main.m
//  OC-多态+id类型
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[[Person alloc] init];
        [p1 setName:@"小明"];
        [p1 setAge:21];
        Dog *d1=[Dog new];
        [d1 setDName:@"哈士奇"];
        [d1 setPrice:1000];
        
        [p1 showInfo];
        [d1 showInfo];
        
//        [p1 showDog];
        //p1,d1....都是静态类型，编译的时候就加入内存，静态类型可以提高程序的效率
        //id类型-->动态绑定：在运行的时候才加入程序,在不涉及多态的时候，尽量减少id的使用
        id obj=p1;//指的是人
        [obj showInfo];
        
        //改变指向
        obj=d1;//指向狗
        [obj showInfo];
        
        Student *s1=[Student new];
        [s1 setName:@"小丽"];
        obj=s1;
        
        [obj showStudent];//指向学生
//        [obj showDog];//编译能通过，运行的时候才去检查该对象的具体类型
        
        //NSObject中常用的一些方法
        //对象XXX能否响应某方法
        if ([obj respondsToSelector:@selector(showDog)])
        {
            NSLog(@"YES");
            [obj performSelector:@selector(showDog)];//等同于[obj showDog]
        }
        else
        {
            NSLog(@"obj 不能响应 showDog");
        }
        //对象XXX是否是某类或其父类创建的对象
        if ([s1 isKindOfClass:[Person class]])
        {
            NSLog(@"s1 isKindOfClass:[Person class]");
        }
        else
        {
            NSLog(@"s1 is not KindOfClass:[Person class]");
        }
        //对象XXX是否是某个具体类创建的对象
        if ([s1 isMemberOfClass:[Person class]])
        {
            NSLog(@"s1 isMemberOfClass:[Person class]");
        }
        else
        {
            NSLog(@"s1 is not MemberOfClass:[Person class]");
        }
        //某类XXX 是否是某个类的子类
        if([Student isSubclassOfClass:[Person class]])
        {
            NSLog(@"Student isSubclassOfClass:[Person class]");
        }
        else
        {
            NSLog(@"Student is not SubclassOfClass:[Person class]");
        }
        
        if (![Student instancesRespondToSelector:@selector(showClass)])
        {
            NSLog(@"子类能响应父类的类方法");
            [Student showClass];
        }
        else
        {
            NSLog(@"子类不可以响应父类的类方法");
        }
        
        //异常捕获机制
        @try {
            //可能有问题的代码块
            [s1 showStudent];
            [obj showDog];
        }
        @catch (NSException *exception) {
            //如果有异常，则打印异常
            NSLog(@"%@,%@",[exception name],[exception reason]);
        }
        @finally {
            //正常运行的代码块
            NSLog(@"正常运行的代码块...");
        }

    }
    return 0;
}
